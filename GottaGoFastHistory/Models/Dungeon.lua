-- Define Objects
-- Dungeon
local Dungeon = {}

function Dungeon.New(name, zoneID, objectives)
  local self = {}
  self.name = name;
  self.zoneID = zoneID;
  self.objectives = objectives;
  self.runs = {};
  return self
end

function Dungeon.GetName(self)
  return self.name
end

function Dungeon.SetName(self, name)
  self.name = name
end

function Dungeon.GetZoneID(self)
  return self.zoneID
end

function Dungeon.SetZoneID(self, zoneID)
  self.zoneID = zoneID
end

function Dungeon.GetObjectives(self)
  return self.objectives
end

function Dungeon.SetObjectives(self, objectives)
  self.objectives = objectives
end

function Dungeon.GetRuns(self)
  return self.runs
end

function Dungeon.SetRuns(self, runs)
  self.runs = runs
end

function Dungeon.AddRun(self, run)
  table.insert(GottaGoFastHistory.db.profile.History[self].runs, run);
end

function GottaGoFastHistory:InitModelDungeon()
  GottaGoFastHistory.Models.Dungeon = Dungeon;
end

function GottaGoFastHistory:FindDungeonByZoneID(zoneID)
  if (GottaGoFastHistory.db.profile.History == nil) then
    GottaGoFastHistory.db.profile.History = {};
  end
  if (next(GottaGoFastHistory.db.profile.History) ~= nil) then
    if (GottaGoFastHistory.db.profile.History[zoneID] and next(GottaGoFastHistory.db.profile.History[zoneID]) ~= nil) then
      return zoneID, GottaGoFastHistory.db.profile.History[zoneID];
    end
  end
  return nil, nil;
end

function GottaGoFastHistory:FindLevelsByDungeon(dungeon)
  local levels = {[1] = "Any"};
  if (dungeon == nil) then
    return levels;
  end
  for k, v in pairs(dungeon["runs"]) do
    levels[v["level"]] = v["level"];
  end
  return levels;
end

function GottaGoFastHistory:FindAffixesByDungeon(dungeon)
  local affixes = {[9999] = "Any"};
  if (affixes == nil) then
    return affixes;
  end
  for k, v in pairs(dungeon["runs"]) do
    for key, affix in pairs(v["affixes"]) do
      affixes[key] = affix["name"];
    end
  end
  return affixes;
end

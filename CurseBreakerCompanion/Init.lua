local loadedFrame = CreateFrame("FRAME")
loadedFrame:RegisterEvent("ADDON_LOADED")
loadedFrame:SetScript("OnEvent", function(self, _, addonName)
  if addonName == "CurseBreakerCompanion" then
    if WeakAuras and WeakAuras.AddCompanionData then
      WeakAuras.AddCompanionData(CurseBreakerCompanion.WeakAuras)
    end
    if Plater and Plater.AddCompanionData then
      Plater.AddCompanionData(CurseBreakerCompanion.Plater)
    end
    self:UnregisterEvent("ADDON_LOADED")
  end
end)
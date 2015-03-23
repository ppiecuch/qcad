function init(basePath) {
    var action = new RGuiAction(qsTranslate("RestrictVertical", "Restrict &Vertically"), RMainWindowQt.getMainWindow());
    action.setRequiresDocument(true);
    action.setScriptFile(basePath + "/RestrictVertical.js");
    action.setIcon(basePath + "/RestrictVertical.svg");
    action.setDefaultShortcut(new QKeySequence("e,v"));
    action.setDefaultCommands(["restrictvertical", "ev"]);
    action.setGroup("snaprestrictions");
    action.setNoState();
    action.setGroupSortOrder(15600);
    action.setSortOrder(400);
    action.setWidgetNames(["SnapMenu", "SnapToolBar", "SnapToolsPanel"]);

    var appWin = EAction.getMainWindow();
    appWin.addFocusListener(action);
}

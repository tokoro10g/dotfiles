"use strict";
exports.__esModule = true;
exports.activate = function (oni) {
    console.log("config activated");
    // Input
    //
    // Add input bindings here:
    //
    //oni.input.bind("<c-h>", () => {
    //    oni.commands.executeCommand("explorer.collapse")
    //})
    //
    // Or remove the default bindings here by uncommenting the below line:
    oni.input.unbind("<c-p>");
};
exports.deactivate = function (oni) {
    console.log("config deactivated");
};
exports.configuration = {
    "ui.colorscheme": "gruvbox",
    "oni.bookmarks": ["~/doctor"],
    "autoClosingPairs.enabled": false,
    "sidebar.enabled": false,
    "sidebar.default.open": false,
    "editor.clipboard.enabled": true,
    "editor.fontSize": "14px",
    "editor.fontFamily": "Ricty Discord",
    //"editor.fontFamily": "Cica",
    // UI customizations
    "ui.animations.enabled": true,
    "ui.fontSmoothing": "subpixel-antialiased"
};

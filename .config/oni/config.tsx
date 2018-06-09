
import * as React from "react"
import * as Oni from "oni-api"

export const activate = (oni: Oni.Plugin.Api) => {
    console.log("config activated")

    // Input
    //
    // Add input bindings here:
    //
    //oni.input.bind("<c-h>", () => {
    //    oni.commands.executeCommand("explorer.collapse")
    //})

    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")

}

export const deactivate = (oni: Oni.Plugin.Api) => {
    console.log("config deactivated")
}

export const configuration = {
    "ui.colorscheme": "gruvbox",

    "oni.bookmarks": ["~/doctor"],

    "sidebar.enabled": false,
    "sidebar.default.open": false,

    "editor.clipboard.enabled": false,
    "editor.fontSize": "14px",
    "editor.fontFamily": "Ricty Discord",
    //"editor.fontFamily": "Cica",

    // UI customizations
    "ui.animations.enabled": true,
    "ui.fontSmoothing": "subpixel-antialiased",
}

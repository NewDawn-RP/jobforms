Config = {}

Config.UseTarget = false -- ox target support

-- Discord Log Settings
Config.ServerName = "New Dawn RP"
Config.FooterText = " | Formulaire Entreprise | "
Config.FooterIconURL = ""
Config.ShowTime = true -- shows date in the footer
Config.ChangeBoolsToStrings = true -- changes True/False to Yes/No
Config.MakeAnswersBold = true
Config.BotUsername = "Formulaire Entreprise"
Config.BotAvatar = "https://cdn.discordapp.com/attachments/1096118900153917500/1115376523642409040/LogoNewDawn.png"
Config.AuthorAvatar = "https://cdn.discordapp.com/attachments/1096118900153917500/1115376523642409040/LogoNewDawn.png"

 --[[
    Question Types:
    input,
    number,
    checkbox,
    select,
    slider
    color
    multi-select
    date
    date-range 
    time
    textarea

    for more details, visit: https://overextended.github.io/docs/ox_lib/Interface/Client/input
    ]]

-- Main Settings

Config.Areas = {
    {
        label = "Candidatures SAPD",
        webhook = "police", -- note if not present, it will send to "default"
        Coords = vector3(616.8940, 5.6382, 82.7600),
        Blip = {
            enabled = true,
            sprite = 525,
            size = 0.7,
            colour = 3,
        },
        TargetSettings = { -- For when using OX-target
            radius = 2,
            debug = false,
            icon = "fa-solid fa-list-check",
            label = "Envoyer votre candidature"
        },
        MarkerSettings = { -- if not using OX-Target
            DrawMarker = true,
            size = vec3(0.3, 0.3, 0.3),
            rotation = vec3(1, 1, 1),
            type = 32,
            Distance = 10.0,
            colour = {r = 0, g = 0, b = 255, a = 200},
            TextUI = "[E] -> Envoyer votre candidature",
        },
        Questions = {
            {
                type = "input",
                label = "Nom",
                description = "Insérer votre nom de famille",
                placeholder = "Doe",
                required = true,
            },
            {   
                type = "input",
                label = "Prénom",
                description = "Insérer votre prénom",
                placeholder = "John",
                required = true,
            },
            {   
                type = "input",
                label = "Numéro de téléphone",
                description = "Insérer votre numéro de téléphone",
                placeholder = "000-000-0000",
                required = true,
            },
            -- {   
            --     type = "checkbox",
            --     label = "Do you like Chicken?",
            --     description = "Very Important Yes/No Question.",
            --     required = false,
            -- },
            -- {   
            --     type = "slider",
            --     label = "How Much Do you like Noodles?",
            --     default = 5,
            --     min = 1,
            --     max = 10,
            --     step = 1,
            --     required = true,
            -- },
            {   
                type = "textarea",
                label = "Veuillez indiquer vos motivations",
                description = "Soyez concis",
                placeholder = "...",
                max = 150, -- Max Lines
                required = true,
            },
            {   
                type = "checkbox",
                label = "Confirmez que les informations données sont correctes ?",
                description = "Vous devez cocher cette case",
                required = true,
            },
        }
    },
    {
        label = "Candidatures EMS",
        webhook = "ems", -- note if not present, it will send to "default"
        Coords = vector3(310.7861, -587.4534, 43.2676),
        Blip = {
            enabled = true,
            sprite = 525,
            size = 0.7,
            colour = 3,
        },
        TargetSettings = { -- For when using OX-target
            radius = 2,
            debug = false,
            icon = "fa-solid fa-list-check",
            label = "Envoyer votre candidature"
        },
        MarkerSettings = { -- if not using OX-Target
            DrawMarker = true,
            size = vec3(0.3, 0.3, 0.3),
            rotation = vec3(1, 1, 1),
            type = 32,
            Distance = 10.0,
            colour = {r = 255, g = 0, b = 0, a = 200},
            TextUI = "[E] -> Envoyer votre candidature",
        },
        Questions = {
            {
                type = "input",
                label = "Nom",
                description = "Insérer votre nom de famille",
                placeholder = "Doe",
                required = true,
            },
            {   
                type = "input",
                label = "Prénom",
                description = "Insérer votre prénom",
                placeholder = "John",
                required = true,
            },
            {   
                type = "input",
                label = "Numéro de téléphone",
                description = "Insérer votre numéro de téléphone",
                placeholder = "000-000-0000",
                required = true,
            },
            -- {   
            --     type = "checkbox",
            --     label = "Do you like Chicken?",
            --     description = "Very Important Yes/No Question.",
            --     required = false,
            -- },
            -- {   
            --     type = "slider",
            --     label = "How Much Do you like Noodles?",
            --     default = 5,
            --     min = 1,
            --     max = 10,
            --     step = 1,
            --     required = true,
            -- },
            {   
                type = "textarea",
                label = "Vos expériences",
                description = "Notez ici vos différentes expériences en médecine",
                placeholder = "...",
                max = 150, -- Max Lines
                required = true,
            },
            {   
                type = "textarea",
                label = "Veuillez indiquer vos motivations",
                description = "Soyez concis",
                placeholder = "...",
                max = 150, -- Max Lines
                required = true,
            },
            {   
                type = "checkbox",
                label = "Confirmez que les informations données sont correctes ?",
                description = "Vous devez cocher cette case",
                required = true,
            },
        }
    }
}

Config.ApplicationSettings = {
    Cooldown = {
        enabled = true,
        time = 5 * 60000 -- time in milliseconds (default: 5 mins)
    },
}

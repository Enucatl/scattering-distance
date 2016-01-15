$ ->
    $("#select-dataset").select2()
    $("#select-dataset").on "change", ->
        window.show_image this.value
        window.show_plots this.value

    window.show_image $("#select-dataset").val()
    window.show_plots $("#select-dataset").val()

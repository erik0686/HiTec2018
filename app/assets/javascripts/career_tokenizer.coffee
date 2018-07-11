$ -> 
    $(".career_search").each -> 
        _this = $(this)
        _this.tokenInput "/careers.json",
            crossDomain: false 
            prePopulate: _this.data("pre")
            theme: "hitec"
            preventDuplicates: true
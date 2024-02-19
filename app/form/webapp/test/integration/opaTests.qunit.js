sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'form/test/integration/FirstJourney',
		'form/test/integration/pages/schoolObjectPage'
    ],
    function(JourneyRunner, opaJourney, schoolObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('form') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheschoolObjectPage: schoolObjectPage
                }
            },
            opaJourney.run
        );
    }
);
sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'compositionassociation/test/integration/FirstJourney',
		'compositionassociation/test/integration/pages/schoolList',
		'compositionassociation/test/integration/pages/schoolObjectPage'
    ],
    function(JourneyRunner, opaJourney, schoolList, schoolObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('compositionassociation') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheschoolList: schoolList,
					onTheschoolObjectPage: schoolObjectPage
                }
            },
            opaJourney.run
        );
    }
);
sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/schoolList',
		'project1/test/integration/pages/schoolObjectPage',
		'project1/test/integration/pages/studentObjectPage'
    ],
    function(JourneyRunner, opaJourney, schoolList, schoolObjectPage, studentObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheschoolList: schoolList,
					onTheschoolObjectPage: schoolObjectPage,
					onThestudentObjectPage: studentObjectPage
                }
            },
            opaJourney.run
        );
    }
);
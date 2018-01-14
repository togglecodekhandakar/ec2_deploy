# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sites = Site.create([{site_id: 'dsm-site-001', site_name: 'Wagga Wagga'}, {site_id: 'dsm-site-003', site_name: 'Singapore'}])

employees = Employee.create([{employee_id: 'dsm-employee-001', first_name: 'Khandakar', last_name: 'Rabbi', email_address: 'togglecode@gmail.com', mobile_number: '045000000', user_name: 'krabbi', password: 'rabbi123', manager_id: 'warren', site:sites.first},
{employee_id: 'dsm-employee-002', first_name: 'Warren', last_name: 'Prior', email_address: 'warren.prior@dsm.com', mobile_number: '045000000', user_name: 'wprior', password: 'warren123', manager_id: 'warren', site:sites.first},
{employee_id: 'dsm-employee-003', first_name: 'David', last_name: 'Crouch', email_address: 'david.crouch@dsm.com', mobile_number: '045000000', user_name: 'dcrouch', password: 'david123', manager_id: 'warren', site:sites.first}
	])


questiontypes = Questiontype.create([{questiontype_id: 'dsm-qt-001', questiontype_name: 'alpha-picker'},
									{questiontype_id: 'dsm-qt-002', questiontype_name: 'fill-blank'},
									{questiontype_id: 'dsm-qt-003', questiontype_name: 'fill-two-blanks'},
									{questiontype_id: 'dsm-qt-004', questiontype_name: 'four-quarter'},
									{questiontype_id: 'dsm-qt-005', questiontype_name: 'multi-select'},
									{questiontype_id: 'dsm-qt-006', questiontype_name: 'picker'},
									{questiontype_id: 'dsm-qt-007', questiontype_name: 'single-select'},
									{questiontype_id: 'dsm-qt-008', questiontype_name: 'single-select-item'},
									{questiontype_id: 'dsm-qt-009', questiontype_name: 'toggle-translate'},
									{questiontype_id: 'dsm-qt-010', questiontype_name: 'true-false'},
									{questiontype_id: 'dsm-qt-011', questiontype_name: 'yes-no'},
									{questiontype_id: 'dsm-qt-012', questiontype_name: 'yes-no-yes-fill'},
									{questiontype_id: 'dsm-qt-013', questiontype_name: 'yes-no-no-fill'},
									{questiontype_id: 'dsm-qt-014', questiontype_name: 'signature'},
									{questiontype_id: 'dsm-qt-015', questiontype_name: 'yes-no-nr'},
									{questiontype_id: 'dsm-qt-016', questiontype_name: 'date-pick'},
									{questiontype_id: 'dsm-qt-017', questiontype_name: 'time-pick'},
									{questiontype_id: 'dsm-qt-018', questiontype_name: 'multi-select-fill'},
									{questiontype_id: 'dsm-qt-019', questiontype_name: 'multi-fill-other'},
									{questiontype_id: 'dsm-qt-020', questiontype_name: 'yes-no-nr-list-item'},
									{questiontype_id: 'dsm-qt-021', questiontype_name: 'yes-nr-jsa-justification'},
									{questiontype_id: 'dsm-qt-022', questiontype_name: 'yes-no-nr-yes-fill'},
									{questiontype_id: 'dsm-qt-023', questiontype_name: 'simple-check'},
									{questiontype_id: 'dsm-qt-024', questiontype_name: 'check-date-time'},
									{questiontype_id: 'dsm-qt-025', questiontype_name: 'work-completion-date-time'},
									{questiontype_id: 'dsm-qt-026', questiontype_name: 'completed-stopped'}])


parttypes = Parttype.create([{parttype_id: 'dsm-pt-001', parttype_name: 'PERMIT APPLICATION (EXECUTOR)'},
							{parttype_id: 'dsm-pt-002', parttype_name: 'PERMIT APPROVAL (ISSUING AUTHORITY - DSM)'},
							{parttype_id: 'dsm-pt-003', parttype_name: 'LAST MINUTE RISK ASSESSMENT (LMRA), CONFIRMATION AND ACCEPTANCE (4 - EYES PRINCIPLES)'},
							{parttype_id: 'dsm-pt-004', parttype_name: 'PERMIT EXTENSION (4 - EYES PRINCIPLES)'},
							{parttype_id: 'dsm-pt-005', parttype_name: 'WORK COMPLETION (EXECUTOR)'},
							{parttype_id: 'dsm-pt-006', parttype_name: 'PERMIT CANCELLATION (ISSUING AUTHORITY - DSM)'}])

categories = Category.create([{category_id: 'dsm-cat-001', category_id_s_name: 'gwp', category_name: 'General Work Permit'},
							{category_id: 'dsm-cat-002', category_id_s_name: 'lototo', category_name: 'Lock Tag Try out'},
							{category_id: 'dsm-cat-003', category_id_s_name: 'ewp', category_name: 'Electrical Work Permit'},
							{category_id: 'dsm-cat-004', category_id_s_name: 'wah', category_name: 'Working Height Permit'},
							{category_id: 'dsm-cat-005', category_id_s_name: 'owp', category_name: 'Overriding Permit'},
							{category_id: 'dsm-cat-006', category_id_s_name: 'cse', category_name: 'Confined Permit'}])


questions = Question.create([{question_id: 'dsm-question-001', question_text:'Contractor Company Name', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-002', question_text:'No of Workers', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-003', question_text:'Equipment to Work on', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-004', question_text:'Exact Work Location', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-005', question_text:'Description of Work', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-006', question_text:'Date of Work To Be Done', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-007', question_text:'Time From', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-008', question_text:'Time To', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-009', question_text:'Hazard Associated', options:'Mechanical Hazard && Electrical Hazard && Atmospherical Hazard && Environmental Hazard', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-010', question_text:'Associated Permit', options:'Lockout Tagout Tryout Form&&Hot Work Permit&&Electrical Work Permit&&Confined Space Entry Permit&&Working at Height Permit&&Overriding Work Permit', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-011', question_text:'Personal Protective Equipment Required', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-012', question_text:'Has the work area been examined and reasonable precaution taken to ensure that no potential hazards exist and that no other work in the area could create a hazard while the job is in progress?', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-013', question_text:'Has the scaffolding been adequately erected at the proper location?', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-014', question_text:'Have the equipment to be worked on been grounded?', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-015', question_text:'Is job safety analysis (JSA) conducted and communicated to those involved in this activity and attach to this permit? If no, state reasons ', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-016', question_text:'Will this work affect any nearby equipment/area? If yes, please state', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-017', question_text:'Are barricades and warning signs in place?', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-018', question_text:'Have the employees/contractors concerned been thoroughly briefed on all relevant safety requirements and procedures?', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-019', question_text:'Are colleagues or contractors been briefed with the applicable SDS? Review SDS if required.', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-020', question_text:'Executor Name', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-021', question_text:'Executor Signature', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-022', question_text:'Date', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-023', question_text:'Time', options:'', category: categories.first, parttype: parttypes.first, questiontype: questiontypes.second},
	{question_id: 'dsm-question-024', question_text:'Is the equipment tag correctly, properly isolated and valve closed, tagged and locked?', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-025', question_text:'Has the work area been adequately barricaded and warning signs in place?', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-026', question_text:'Has the equipment been depressurized / drained / flushed / purged and free of hazardous materials?', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-027', question_text:'Is safety precaution required at other area indirectly affected by this work? If Yes, please state', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-028', question_text:'Are all necessary permits issued?  If NO, DO NOT sign the permit.', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-029', question_text:'Does adjacent equipment present hazards? If Yes, state', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-030', question_text:'Any other safety requirements / precautions? If Yes, state', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-031', question_text:'Any additional/special PPE Required? If Yes, please state', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-032', question_text:'Is Job Safety Analysis (JSA) conducted and communicated to those involved in this activity? If NOT justified properly, DO NOT sign the permit.', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-033', question_text:'Has the contractor completed the Contractor Induction Training?', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-034', question_text:'Has the area of work been inspected and reviewed together with the contractor?', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-035', question_text:'Has the method of work been agreed with DSM Manager?', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-036', question_text:'Has the tools and equipment been inspected and certified safe for use? List items: ', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-037', question_text:'Issuing Authority', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-038', question_text:'Authority Signature', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-039', question_text:'Authority Date', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-040', question_text:'Authority Time', options:'', category: categories.first, parttype: parttypes.second, questiontype: questiontypes.second},
	{question_id: 'dsm-question-041', question_text:'Does everyone involved in the job understand the hazards of the activity and have the necessary PPE?', options:'', category: categories.first, parttype: parttypes.third, questiontype: questiontypes.second},
	{question_id: 'dsm-question-042', question_text:'Have the locations of the emergency showers, eye wash, emergency exits and emergency routes been checked and communicated to the involved personnel?', options:'', category: categories.first, parttype: parttypes.third, questiontype: questiontypes.second},
	{question_id: 'dsm-question-043', question_text:'Have the personnel inspected the PPE, the tools and equipment and are right for the job involved?', options:'', category: categories.first, parttype: parttypes.third, questiontype: questiontypes.second},
	{question_id: 'dsm-question-044', question_text:'Are there any risks arising from the surrounding environment? If yes, please state', options:'', category: categories.first, parttype: parttypes.third, questiontype: questiontypes.second},
	{question_id: 'dsm-question-045', question_text:'Are there any additional hazards from the job involved? If yes, please state', options:'', category: categories.first, parttype: parttypes.third, questiontype: questiontypes.second},
	{question_id: 'dsm-question-046', question_text:'Are there any additional or more work than that stated on this work permit? If yes: please state', options:'', category: categories.first, parttype: parttypes.third, questiontype: questiontypes.second},
	{question_id: 'dsm-question-047', question_text:'Executor', options:'', category: categories.first, parttype: parttypes.third, questiontype: questiontypes.second},
	{question_id: 'dsm-question-048', question_text:'Signed:', options:'', category: categories.first, parttype: parttypes.third, questiontype: questiontypes.second},
	{question_id: 'dsm-question-049', question_text:'Date', options:'', category: categories.first, parttype: parttypes.third, questiontype: questiontypes.second},
	{question_id: 'dsm-question-050', question_text:'Time', options:'', category: categories.first, parttype: parttypes.third, questiontype: questiontypes.second},
	{question_id: 'dsm-question-051', question_text:'Issuing Authority', options:'', category: categories.first, parttype: parttypes.third, questiontype: questiontypes.second},
	{question_id: 'dsm-question-052', question_text:'Signed', options:'', category: categories.first, parttype: parttypes.third, questiontype: questiontypes.second},
	{question_id: 'dsm-question-053', question_text:'Date', options:'', category: categories.first, parttype: parttypes.third, questiontype: questiontypes.second},
	{question_id: 'dsm-question-054', question_text:'Time', options:'', category: categories.first, parttype: parttypes.third, questiontype: questiontypes.second},
	{question_id: 'dsm-question-055', question_text:'The worksite has been re-surveyed and permit conditions have not changed.', options:'', category: categories.first, parttype: parttypes.fourth, questiontype: questiontypes.second},
	{question_id: 'dsm-question-056', question_text:'The extension of permit is granted on Date & Time', options:'', category: categories.first, parttype: parttypes.fourth, questiontype: questiontypes.second},
	{question_id: 'dsm-question-057', question_text:'Executor', options:'', category: categories.first, parttype: parttypes.fourth, questiontype: questiontypes.second},
	{question_id: 'dsm-question-058', question_text:'Signed', options:'', category: categories.first, parttype: parttypes.fourth, questiontype: questiontypes.second},
	{question_id: 'dsm-question-059', question_text:'Issuing Authority', options:'', category: categories.first, parttype: parttypes.fourth, questiontype: questiontypes.second},
	{question_id: 'dsm-question-060', question_text:'Signed', options:'', category: categories.first, parttype: parttypes.fourth, questiontype: questiontypes.second},
	{question_id: 'dsm-question-061', question_text:'Work * Completed / Suspended on Date & Time', options:'', category: categories.first, parttype: parttypes.fifth, questiontype: questiontypes.second},
	{question_id: 'dsm-question-062', question_text:'Worksite has been cleaned up, housekept and cleared of debris.', options:'', category: categories.first, parttype: parttypes.fifth, questiontype: questiontypes.second},
	{question_id: 'dsm-question-063', question_text:'Executor', options:'', category: categories.first, parttype: parttypes.fifth, questiontype: questiontypes.second},
	{question_id: 'dsm-question-064', question_text:'Signed', options:'', category: categories.first, parttype: parttypes.fifth, questiontype: questiontypes.second}])
	




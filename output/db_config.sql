CREATE TABLE tblCCMD (
cmdid varchar(100),
ccmd_abbr varchar(100),
ccmd_name varchar(100)
);
CREATE TABLE tblUserView (
userviewid bigint,
view_name varchar(100),
userviewform varchar(100),
userviewfilter varchar(100),
userviewsort varchar(100),
userviewowner varchar(100),
userviewcreated numeric,
userviewpublic boolean
);
CREATE TABLE tblUser (
userid bigint,
username varchar(100),
first_name varchar(100),
last_name varchar(100),
rankid varchar(100),
user_created timestamp,
duty_title numeric,
admin boolean,
last_login timestamp,
before_last_login timestamp,
last_login_computer varchar(100),
last_login_version varchar(100),
userinactive boolean,
userhomepanel1 numeric,
userhomepanel2 numeric,
userhomepanel3 numeric,
userhomepanel4 numeric,
crewlogid numeric,
appaccessid varchar(100),
crewid numeric
);
CREATE TABLE tblEventSignalAction (
eventsignalactid varchar(100),
eventsignalactstart varchar(100),
eventsignalactstop varchar(100),
signalactionid varchar(100),
eventsignalid varchar(100)
);
CREATE TABLE tblAppSetting (
settingid bigint,
default_event_folder varchar(100),
event_due_interval_(hours) bigint,
event_report_name varchar(100),
event_report_header_line_1 varchar(100),
event_report_header_line_2 varchar(100),
tacrep_format:_asset numeric,
tacrep_format:_signal numeric,
tacrep_format:_geolocation numeric,
eventrptstatusid numeric,
home_screen_caption varchar(100),
default_mission_folder varchar(100),
default_satellite_folder varchar(100),
setusersallowselfreg boolean,
seteventrptimagel bigint,
seteventrptimager bigint,
settimezuluoffset bigint,
use_zulu_time_as_preferred_time boolean,
global_date_format numeric,
global_date/time_format numeric,
global_time_format numeric,
default_event_signal_name varchar(100),
show_classification_notice_dialog_on_startup boolean,
app_support_and_feedback_link numeric,
default_access_group_and_permissions_for_new_users varchar(100),
distroid_event bigint,
distroid_status bigint,
distroid_msn bigint,
peak_due_interval bigint,
ephemeris_yellow_age bigint,
ephemeris_red_age bigint,
setunit varchar(100),
setunitudl numeric
);
CREATE TABLE tblModType (
modtypeid bigint,
mod_type varchar(100)
);
CREATE TABLE tblSatEphem (
satephemid bigint,
satellite_ephemeris_name varchar(100),
satellite_ephemeris_validated timestamp,
satellite_ephemeris_validated_by varchar(100),
satellite_ephemeris_note numeric,
ephemid numeric,
statusid bigint,
satid bigint
);
CREATE TABLE tblEventCat (
eventcatid bigint,
event_category varchar(100)
);
CREATE TABLE tblEphemeris (
ephemid bigint,
ephemeris_source varchar(100)
);
CREATE TABLE tblMission (
msnid bigint,
mission_name varchar(100),
mission_identifier varchar(100),
mission_planned_start numeric,
mission_planned_end numeric,
mission_start timestamp,
mission_end timestamp,
mission_information varchar(100),
mission_debrief numeric,
mission_area varchar(100),
mission_file_folder varchar(100),
mission_poc numeric,
mission_poc_phone numeric,
mission_poc_email numeric,
mission_email_distro_id numeric,
classificationid numeric,
msnchat numeric
);
CREATE TABLE tblEventSignal (
eventsignalid varchar(100),
eventid varchar(100),
txpid varchar(100),
signal_category varchar(100),
event_signal_name varchar(100),
event_signal_time varchar(100),
event_signal_end_time varchar(100),
event_signal_remarks varchar(100),
event_signal_show_on_report varchar(100),
event_signal_color_(0=gray_1=blue_2=red) varchar(100),
event_signal_time_approx varchar(100),
event_signal_relook varchar(100),
event_signal_relook_interval varchar(100),
event_signal_geolocation_at_relook varchar(100),
event_signal_characterize_at_relook varchar(100),
event_signal_operator_notes varchar(100),
last_seen_dtg varchar(100),
xeventsignalspan varchar(100),
signal_downlink_freq_(mhz) varchar(100),
signal_uplink_freq_(mhz) varchar(100),
signal_power_(db) varchar(100),
signal_bandwidth_(khz) varchar(100),
xbehaviorid varchar(100),
modulation varchar(100),
xpwrrefid varchar(100),
xeventsignalinterval varchar(100),
classificationid varchar(100),
signal_time_added varchar(100),
eventsignalchannel varchar(100),
eventsignalsubchannel varchar(100),
eventsignalguid varchar(100)
);
CREATE TABLE tblCrewMbr (
crewmbrid bigint,
crewid varchar(100),
username varchar(100),
crewpsnid varchar(100)
);
CREATE TABLE tblCause (
causeid bigint,
status_cause_code varchar(100),
status_cause varchar(100)
);
CREATE TABLE tblBeam (
beamid bigint,
beam_name varchar(100),
beam_direction_(0=up,_1=down) bigint,
in_beam_footprint boolean,
beam_notes numeric,
satid bigint
);
CREATE TABLE tblMsgAck (
msgackid bigint,
ack_by_user varchar(100),
msg_ack_time timestamp,
msgid bigint
);
CREATE TABLE tblSignal (
signalid bigint,
signal_downlink_mhz numeric,
signal_bandwidth bigint,
symbol_rate_(ksps) numeric,
signal_name varchar(100),
signal_power_(db) numeric,
signal_notes varchar(100),
signal_last_verified timestamp,
signal_added timestamp,
signal_category numeric,
fec_rate numeric,
affiliation_(color) numeric,
active_in_use boolean,
assetid numeric,
txpid bigint,
modulation numeric,
encid numeric,
fecid numeric,
freqplanid numeric,
classificationid numeric,
countryid numeric,
signalchannel varchar(100),
signalsubchannel numeric,
signalcircuit numeric,
signalcontract numeric,
signalsaa numeric,
signalwatch boolean,
signallink numeric,
signaleidsnum numeric
);
CREATE TABLE tblAssetType (
assettypeid bigint,
asset_type varchar(100),
is_fixed_position boolean,
type_class varchar(100)
);
CREATE TABLE tblResearch (
researchid bigint,
research_caption varchar(100),
research_body varchar(100),
research_date timestamp,
research_archived boolean,
research_creator numeric,
research_created timestamp,
satid bigint
);
CREATE TABLE tblMissionSignal (
msnsignalid bigint,
msnid bigint,
signalid bigint,
mission_signal_note numeric,
mission_signal_added timestamp,
mission_signal_added_by varchar(100),
mission_signal_priority numeric,
mission_signal_task_start timestamp,
mission_signal_task_end numeric,
cmdid numeric,
opnid numeric,
statusid bigint,
classificationid numeric
);
CREATE TABLE tblMissionAsset (
msnassetid bigint,
msnid bigint,
assetid bigint,
mission_asset_note varchar(100),
mission_asset_added timestamp,
added_by_user varchar(100),
mission_asset_priority varchar(100),
mission_asset_start timestamp,
mission_asset_end numeric,
cmdid numeric,
opnid numeric,
statusid bigint,
classificationid numeric
);
CREATE TABLE tblSignalGeo (
signalgeoid varchar(100),
geo_time varchar(100),
geo_location varchar(100),
geo_remarks varchar(100),
geo_latitude varchar(100),
geo_longitude varchar(100),
geo_semi-major_axis varchar(100),
geo_semi-minor_axis varchar(100),
geo_oreintation varchar(100),
geo_reason varchar(100),
geo_status varchar(100),
geo_confidence varchar(100),
countryid varchar(100),
geomethodid varchar(100),
signalgeonbr varchar(100),
signalid varchar(100),
ephemid varchar(100)
);
CREATE TABLE tblUserAppRptSetRpt (
setkey varchar(100),
rpskey varchar(100)
);
CREATE TABLE tblGeoReason (
georeasonid bigint,
geo_reason varchar(100)
);
CREATE TABLE tblUserBookmark (
userbookmarkid varchar(100),
username varchar(100),
appbookmarkid varchar(100),
userbookmarkrecordid varchar(100),
created varchar(100)
);
CREATE TABLE tblBrevity (
brevityid bigint,
brevity_term varchar(100),
brevity_definition varchar(100)
);
CREATE TABLE tblImportSignal (
importsignalid varchar(100),
signal_frequency varchar(100),
signal_bandwidth varchar(100),
symbol_rate_(ksps) varchar(100),
signal_name varchar(100),
signal_power_(db) varchar(100),
signal_notes varchar(100),
signal_last_verified varchar(100),
fec_rate varchar(100),
signal_category varchar(100),
assetid varchar(100),
txpid varchar(100),
modulation varchar(100),
encid varchar(100),
fecid varchar(100),
freqplanid varchar(100),
signal_added varchar(100),
importsignaluser varchar(100),
transponder varchar(100),
frequencyplan varchar(100)
);
CREATE TABLE tblAppAccess (
appaccessid bigint,
access_group_name varchar(100),
add_or_edit_satellites boolean,
delete_satellites boolean,
delete_satellite_data_items boolean,
add_or_edit_missions boolean,
delete_missions boolean,
create_and_add_orders boolean,
delete_orders boolean,
add_or_edit_order_assets boolean,
remove_assets_from_task_orders boolean,
add_or_edit_assets boolean,
delete_assets boolean,
add_or_edit_frequency_plans boolean,
delete_frequency_plans boolean,
add_signals_to_frequeny_plans boolean,
remove_signals_from_frequency_plans boolean,
add_or_edit_events boolean,
delete_events boolean,
add_or_edit_event_data_items boolean,
remove_event_data_items boolean,
lock_an_event boolean,
unlock_an_event boolean,
add_logs boolean,
delete_logs boolean,
add_or_edit_log_entries boolean,
delete_log_entries boolean,
delete_another_persons_log_entry boolean,
edit_another_persons_log_entry boolean,
add_or_edit_antennas boolean,
delete_antennas boolean,
add_weapon_capability boolean,
edit_capability_or_change_status boolean,
delete_weapon_capability boolean,
add_or_edit_weapon_status boolean,
close_weapon_status boolean,
delete_weapon_status boolean,
add_or_edit_crew boolean,
delete_crew boolean,
add_self_to_crews boolean,
remove_self_from_crews boolean
);
CREATE TABLE tblCrewLogEntry (
crewlogentryid bigint,
log_entry_date/time timestamp,
crew_log_entry varchar(100),
log_entry_created timestamp,
log_entry_creator varchar(100),
log_entry_important boolean,
crewid varchar(100),
mission_(id) varchar(100),
crew_log_flagged boolean,
log_entry_green boolean,
log_entry_blue boolean,
log_entry_purple boolean
);
CREATE TABLE tblVul (
vulid varchar(100),
on_mission_start varchar(100),
off_mission_end varchar(100),
orderassetid varchar(100)
);
CREATE TABLE tblEventAsset (
eventassetid varchar(100),
eventid varchar(100),
assetid varchar(100),
signalid varchar(100),
signalcatid varchar(100),
event_asset_remarks varchar(100),
txpid varchar(100),
event_asset_downlink_(mhz) varchar(100),
event_asset_uplink_(mhz) varchar(100),
event_asset_power varchar(100),
event_asset_bw_(khz) varchar(100),
event_asset_latitude varchar(100),
event_asset_longitude varchar(100),
event_asset_ivo varchar(100),
countryid varchar(100),
asset_time_added varchar(100),
do_not_show_asset_on_report varchar(100),
classificationid varchar(100),
eventassetchannel varchar(100),
eventassetsubchannel varchar(100),
eventassetguid varchar(100)
);
CREATE TABLE tblWpnCapeChange (
wpncapechgid varchar(100),
wpnid varchar(100),
capeid varchar(100),
statusid_old varchar(100),
statusid varchar(100),
change_effective_time varchar(100),
change_created varchar(100),
change_etro/atro varchar(100),
change_reason varchar(100),
changed_by_user varchar(100)
);
CREATE TABLE tblEventImage (
eventimageid varchar(100),
eventid varchar(100),
image_file_path varchar(100),
image_number varchar(100),
image_caption_(above_image) varchar(100),
image_notes_(below_image) varchar(100),
image_size_mode varchar(100),
image_classification varchar(100),
eventassetid varchar(100),
eventsignalid varchar(100),
eventsignalchrid varchar(100),
geoid varchar(100),
image_time_added varchar(100),
image_added_by_user varchar(100)
);
CREATE TABLE tblOperation (
opnid bigint,
operation_name varchar(100)
);
CREATE TABLE tblPolarity (
polid bigint,
polarity_name varchar(100),
polarity_abbreviation varchar(100),
opposite_polarity varchar(100)
);
CREATE TABLE tblBand (
bandid bigint,
band varchar(100),
band_low_freq bigint,
band_high_freq bigint,
l-band_offset bigint
);
CREATE TABLE tblFEC (
fecid varchar(100),
fec_method varchar(100),
fec varchar(100)
);
CREATE TABLE tblFreqPlan (
freqplanid bigint,
freq_plan_name varchar(100),
hide_plan boolean
);
CREATE TABLE tblGeoScenarioSignal (
geoscnsigid bigint,
scenario_signal_notes varchar(100),
geo_scenario bigint,
signal bigint,
status bigint,
signal_priority_order bigint
);
CREATE TABLE tblEventGroupEvent (
eventgrpevtid varchar(100),
eventgrpid varchar(100),
eventid varchar(100)
);
CREATE TABLE tblEventSignalOn (
eventsignalonid varchar(100),
signal_active_time varchar(100),
signal_active_on-air varchar(100),
eventsignalid varchar(100),
active_time_added varchar(100),
active_time_added_by_username varchar(100)
);
CREATE TABLE tblAsset (
assetid bigint,
asset_name/identifier varchar(100),
asset_type varchar(100),
freq_plan numeric,
asset_is_fixed boolean,
asset_hidden boolean,
asset_remarks numeric,
msn_status numeric,
asset_latitude numeric,
asset_longitude numeric,
asset_height numeric,
asset_color_code numeric,
classificationid numeric,
freq_plan_id_(alt) numeric,
freqplanuse numeric,
countryid numeric,
milsvcid numeric,
cmdid numeric,
assetchat numeric
);
CREATE TABLE tblEventRptStatus (
eventrptstatusid bigint,
event_report_status varchar(100)
);
CREATE TABLE tblGeoConfidence (
geoconfid bigint,
geo_confidence varchar(100),
geo_confidence_level bigint
);
CREATE TABLE tblMissionActivity (
msnactivityid varchar(100),
activity_date/time varchar(100),
mission_activity varchar(100),
activity_created_time varchar(100),
activity_created_by_username varchar(100),
msnid varchar(100)
);
CREATE TABLE tblMissionCrew (
missioncrewid bigint,
msnid bigint,
crewid bigint
);
CREATE TABLE tblCrew (
crewid bigint,
crew_name varchar(100),
crew_is_active boolean,
crew_created timestamp,
crew_creator varchar(100),
crew_nickname numeric
);
CREATE TABLE tblEventGroup (
eventgrpid bigint,
event_group_name varchar(100)
);
CREATE TABLE tblUserAppRptSet (
setkey varchar(100),
set_name varchar(100),
owner varchar(100),
creator varchar(100),
created varchar(100),
shared varchar(100)
);
CREATE TABLE tblUserRptBlock (
userrptblockid bigint,
block_name varchar(100),
block_description varchar(100),
heading varchar(100),
subheading varchar(100),
dataset varchar(100),
report_row_source varchar(100),
field_list varchar(100),
show_row_lines boolean,
striped_rows boolean,
distribute_columns_evenly boolean,
show_field_border boolean,
column_width bigint,
group_and_sort_on varchar(100),
show_group_header boolean,
block_type varchar(100),
image_link_field numeric
);
CREATE TABLE tblSatTag (
sattagid varchar(100),
satid varchar(100),
tagid varchar(100)
);
CREATE TABLE tblContactGroup (
contactgrpid varchar(100),
contact_group_name varchar(100),
contact_group_note varchar(100)
);
CREATE TABLE tblSatWorklist (
satworklistid bigint,
satellite_worklist_name varchar(100),
satellite_worklist_creator varchar(100),
satellite_worklist_public boolean
);
CREATE TABLE tblMissionFreqPlan (
msnfreqplanid varchar(100),
msnid varchar(100),
freqplanid varchar(100),
mission_freq_plan_note varchar(100),
mission_freq_plan_added varchar(100),
mission_freq_plan_added_by varchar(100),
mission_freq_plan_priority varchar(100),
mission_freq_plan_task_start varchar(100),
mission_freq_plan_task_end varchar(100),
cmdid varchar(100),
opnid varchar(100),
statusid varchar(100),
classificationid varchar(100)
);
CREATE TABLE tblSatellite (
satid bigint,
satellite_name varchar(100),
satellite_abbreviation varchar(100),
orbital_position numeric,
orbit numeric,
norad_id numeric,
cospar varchar(100),
satellite_last_validated timestamp,
satellite_last_validated_by numeric,
in_field_of_view boolean,
in_downlink_footprint boolean,
in_uplink_footprint boolean,
in_mission_list boolean,
active_research boolean,
hide_satellite boolean,
satellite_remarks varchar(100),
inactive boolean,
s-band boolean,
l-band boolean,
x-band boolean,
ku-band boolean,
ka-band boolean,
c-band boolean,
uhf-band boolean,
created numeric,
creator numeric,
point_az_true_(deg) numeric,
point_az_mag_(deg) numeric,
point_el_(deg) numeric,
pol_angle numeric,
satellite_file_folder varchar(100),
digraph numeric,
tle numeric,
constellationid numeric,
has_friend boolean,
has_enemy boolean,
has_neutral boolean,
classificationid numeric,
has_commercial boolean,
has_military boolean,
has_civilian boolean,
countryid numeric,
satiron numeric
);
CREATE TABLE tblPowerRef (
pwrrefid bigint,
power_reference varchar(100)
);
CREATE TABLE tblWpn (
wpnid bigint,
weapon_system varchar(100),
wpn_abbreviation varchar(100),
weapon_status bigint
);
CREATE TABLE tblWpnCape (
wpncapeid bigint,
wpnid bigint,
capeid bigint,
statusid bigint,
capability_remarks numeric
);
CREATE TABLE tblAntenna (
antennaid bigint,
antenna_identifier varchar(100),
satid numeric,
antenna_status bigint,
antenna_note varchar(100),
pointed boolean,
antenna_inactive boolean,
pointing_azimuth_(true) numeric,
pointing_azimuth_(mag) numeric,
pointing_elevation numeric,
antenna_lattitude numeric,
antenna_longitude numeric,
antenna_height_agl numeric,
antenna_altitude_asl numeric,
wpnid numeric,
equipped_band numeric,
antenna_updated timestamp,
antenna_updated_by varchar(100),
freq_band varchar(100),
last_peaked timestamp
);
CREATE TABLE tblCrewPsn (
crewpsnid bigint,
crew_position varchar(100),
crew_psn_short varchar(100)
);
CREATE TABLE tblSatWorklistSat (
satworklistsatid bigint,
satworklistid bigint,
satid bigint,
worklist_note numeric
);
CREATE TABLE tblUserRpt (
userrptid bigint,
report_name varchar(100),
report_description varchar(100),
reporting_heading varchar(100),
report_subheading varchar(100),
report_dataset numeric,
userrptrowsource numeric,
apprptblockid_0 bigint,
apprptblockid_1 bigint,
apprptblockid_2 bigint,
apprptblockid_3 numeric,
apprptblockid_4 numeric,
apprptblockid_5 numeric,
apprptblockid_6 numeric,
apprptblockid_7 numeric,
apprptblockid_8 numeric,
apprptblockid_9 numeric,
use_image_report_in_this_block numeric,
block_image_report varchar(100),
use_specified_report_object_header boolean,
report_object_for_header numeric,
show_report_footer boolean,
userrptimagel bigint,
userrptimager bigint,
report_creator_(username) varchar(100),
report_created timestamp
);
CREATE TABLE tblMilSvc (
milsvcid bigint,
milsvcname varchar(100),
milsvcabbr varchar(100)
);
CREATE TABLE tblMissionSignalEA (
eaid varchar(100),
ea_unit varchar(100),
target varchar(100),
sequence varchar(100),
eyes_on_time varchar(100),
eyes_off_time varchar(100),
buzzer_on_planned varchar(100),
buzzer_off_planned varchar(100),
ea_effects varchar(100),
parameters_requested varchar(100),
wpnid varchar(100),
eventid varchar(100),
msnsignalid varchar(100)
);
CREATE TABLE tblEventGeo (
geoid varchar(100),
eventid varchar(100),
event_signal_id varchar(100),
geo_time varchar(100),
geo_location varchar(100),
geo_remarks varchar(100),
geo_operator_notes varchar(100),
geo_latitude varchar(100),
geo_longitude varchar(100),
geo_semi-major_axis varchar(100),
geo_semi-minor_axis varchar(100),
geo_oreintation varchar(100),
geo_notes varchar(100),
geo_reason varchar(100),
geo_status varchar(100),
geo_confidence varchar(100),
countryid varchar(100),
geomethodid varchar(100),
geo_number varchar(100),
classificationid varchar(100),
txpid varchar(100),
geoguid varchar(100)
);
CREATE TABLE tblConstellation (
constellationid bigint,
constellation_name varchar(100)
);
CREATE TABLE tblCountry (
countryid bigint,
country varchar(100),
country_code varchar(100)
);
CREATE TABLE tblImpact (
impactid bigint,
impact_type varchar(100),
impact_type_code varchar(100)
);
CREATE TABLE tblTransponder (
transponder_id bigint,
transponder varchar(100),
transponder_downlink_(mhz) numeric,
transponder_bandwidth_(mhz) numeric,
satellite bigint,
polid numeric,
uplink_polarity_id numeric,
transponder_note varchar(100),
ttf numeric,
beamid numeric,
classificationid numeric,
uplink_beam_id numeric
);
CREATE TABLE tblDistro (
distroid bigint,
distro_name varchar(100),
distro_list varchar(100),
distro_email_subject varchar(100),
distro_email_body varchar(100)
);
CREATE TABLE tblGeoStatus (
geostatusid bigint,
geo_status varchar(100)
);
CREATE TABLE tblEventSignalChr (
eventsignalchrid varchar(100),
eventsignalid varchar(100),
characterization_time varchar(100),
downlink_(mhz) varchar(100),
uplink_(mhz) varchar(100),
power_(dbm) varchar(100),
bandwidth_(khz) varchar(100),
characterization_remarks varchar(100),
signal_color_code varchar(100),
characterization_added varchar(100),
characterization_added_by varchar(100),
modulation varchar(100),
txpid varchar(100),
pwrrefid varchar(100),
behaviorid varchar(100),
evm varchar(100),
symbol_rate varchar(100),
ebno varchar(100),
phase_error varchar(100),
mag_error varchar(100),
esno varchar(100),
eventsignalchrguid varchar(100)
);
CREATE TABLE tblMsgPreset (
msgid bigint,
message varchar(100),
display_order bigint,
message_created numeric
);
CREATE TABLE tblEncoding (
encid varchar(100),
encoding_standard varchar(100)
);
CREATE TABLE tblBehavior (
behaviorid bigint,
behavior varchar(100)
);
CREATE TABLE tblContactGroupMbr (
contactgrpmbrid varchar(100),
contactgrpid varchar(100),
contactid varchar(100)
);
CREATE TABLE tblGeoMethod (
geomethodid bigint,
geo_method varchar(100)
);
CREATE TABLE tblContact (
contactid varchar(100),
contact_first_name varchar(100),
contact_last_name varchar(100),
contact_type varchar(100),
contact_note varchar(100)
);
CREATE TABLE tblSignalCat (
signalcatid bigint,
signal_category varchar(100),
signal_category_code varchar(100),
use_on_events boolean
);
CREATE TABLE tblEventAssetImpact (
eventassetimpactid varchar(100),
impact_start_time varchar(100),
impact_stop_time varchar(100),
impact_remarks varchar(100),
eventassetid varchar(100),
eventsignalid varchar(100),
impact_added varchar(100),
impaced_added_by_username varchar(100),
impact_asset_latitude varchar(100),
impact_asset_longitude varchar(100),
impact_asset_ivo varchar(100),
countryid varchar(100),
impactid varchar(100)
);
CREATE TABLE tblTemplate (
templateid bigint,
template_name varchar(100),
heading varchar(100),
template_body varchar(100),
event_summary_template boolean,
event_section_template boolean,
event_narrative_template boolean,
template_add_to_new boolean
);
CREATE TABLE tblTag (
tag_id bigint,
tag_name varchar(100),
tag_use_with_events boolean,
tag_use_with_satellites boolean
);
CREATE TABLE tblReportsSaved (
rpskey varchar(100),
title varchar(100),
report_name varchar(100),
where varchar(100),
sort varchar(100),
action varchar(100),
export_path varchar(100),
export_name varchar(100),
export_format varchar(100),
send_to varchar(100),
send_subject varchar(100),
send_body varchar(100),
owner varchar(100),
creator varchar(100),
created varchar(100),
shared varchar(100),
report_view varchar(100),
export varchar(100),
print varchar(100),
preview varchar(100),
send_as_attachment varchar(100),
open_file_after_export varchar(100),
automatically_open_folder_after_export varchar(100)
);
CREATE TABLE tblMsg (
msgid bigint,
message_subject varchar(100),
message varchar(100),
message_created timestamp,
message_creator varchar(100),
message_important boolean,
message_expires numeric,
message_requires_ack boolean,
message_is_draft boolean,
mission_(id) numeric,
crewid numeric
);
CREATE TABLE tblAntennaBand (
antennabandid bigint,
antenna_status bigint,
antennaid bigint,
equipped_band varchar(100),
polid bigint,
configuration_installed boolean,
antenna_config_note numeric
);
CREATE TABLE tblTacrep (
tacrepid bigint,
tacrep_name varchar(100),
tacrep_text varchar(100),
tacrep_type bigint,
tacrep_creator numeric,
tacrep_created timestamp,
tacrepremoveblanks boolean,
tacrepreplaceblanks numeric
);
CREATE TABLE tblGUID (
originid varchar(100),
newguid varchar(100)
);
CREATE TABLE tblCapability (
capeid bigint,
capability varchar(100)
);
CREATE TABLE tblGeoScnParam (
geoscnparamid varchar(100),
geoscnid varchar(100),
scnparamid varchar(100),
parameter_value varchar(100)
);
CREATE TABLE tblEventTimeline (
eventtimelineid varchar(100),
timeline_time varchar(100),
timline_post varchar(100),
timeline_post_added_time varchar(100),
timeline_post_added_by_username varchar(100),
timeline_show_on_report varchar(100),
eventid varchar(100)
);
CREATE TABLE tblEvent (
eventid varchar(100),
event_identifier varchar(100),
event_start varchar(100),
event_report_number varchar(100),
event_caption varchar(100),
event_narrative varchar(100),
event_closed_date varchar(100),
event_created varchar(100),
event_last_updated varchar(100),
event_notes varchar(100),
event_summary varchar(100),
report_date_time varchar(100),
asset_notes varchar(100),
signal_notes varchar(100),
next_update_due varchar(100),
declassify_on varchar(100),
classified_by varchar(100),
derived_from varchar(100),
event_drive_folder varchar(100),
event_status_line varchar(100),
event_is_in_zulu_time varchar(100),
eventcatid varchar(100),
eventrptstatusid varchar(100),
satellite varchar(100),
event_classification varchar(100),
msnid varchar(100),
appmiltimezoneid varchar(100),
eventcolor varchar(100),
event_due_interval varchar(100),
event_view_mode varchar(100),
event_email_distro_id varchar(100),
event_additional_distro varchar(100),
cui_controlled_by varchar(100),
cui_category varchar(100),
cui_poc varchar(100),
cui_phone varchar(100),
eventlastudlpost varchar(100),
eventguid varchar(100)
);
CREATE TABLE tblImportSatellite (
satellite varchar(100),
abbreviation varchar(100),
norad varchar(100),
cospar varchar(100),
slot varchar(100),
notes varchar(100)
);
CREATE TABLE tblWpnStatus (
wpnstatusid bigint,
wpnid bigint,
weapon_status bigint,
effective_time timestamp,
change_created timestamp,
etro timestamp,
reason varchar(100),
changed_by_user varchar(100),
status_end timestamp,
status_closed timestamp,
status_end_reason varchar(100),
status_end_updated_by_username varchar(100),
related_job_control_number numeric,
classificationid numeric,
causeid numeric
);
CREATE TABLE tblTxpPair (
sattxppairid bigint,
pair_txp_id_a bigint,
pair_txp_id_b bigint,
pair_validated_on timestamp,
pair_validated_by numeric,
pair_notes numeric,
pair_status bigint,
signalid numeric,
dfo numeric
);
CREATE TABLE tblSysConnect (
id bigint,
sysconnectid bigint
);
CREATE TABLE tblBeacon (
beaconid bigint,
beacon_frequency_(mhz) bigint,
beacon_note numeric,
satid bigint,
polid bigint
);
CREATE TABLE tblClassification (
classificationid bigint,
classification_class_number varchar(100),
classification_marking varchar(100),
classification_abbreviated varchar(100)
);
CREATE TABLE tblAppRank (
rank_id bigint,
rank varchar(100),
rank_full_name varchar(100),
rank_level bigint
);
CREATE TABLE tblImportTransponder (
imptxpid varchar(100),
transponder varchar(100),
bandwidth varchar(100),
ttf varchar(100),
frequency varchar(100),
polarity varchar(100),
notes varchar(100),
polid varchar(100),
importedby varchar(100),
imported varchar(100),
satellite varchar(100),
satid varchar(100)
);
CREATE TABLE tblEventTag (
eventtagid varchar(100),
eventid varchar(100),
tagid varchar(100)
);
CREATE TABLE tblEventSection (
eventsecid varchar(100),
section_heading varchar(100),
section_heading.1 varchar(100),
section_order varchar(100),
section_created varchar(100),
section_last_modified varchar(100),
section_created_by varchar(100),
section_last_modified_by varchar(100),
eventid varchar(100)
);
CREATE TABLE tblMissionArea (
msnareaid bigint,
mission_area varchar(100)
);

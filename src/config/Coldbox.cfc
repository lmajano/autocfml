<cfcomponent output="false">

	<cffunction name="configure" returntype="void" access="public" output="false">
		<cfscript>
			variables.coldbox = {
				appName = "Automaton",
				debugMode = false,
				reinitPassword = "",
				handlersIndexAutoReload = false,
				configAutoReload = false,
				defaultEvent = "Home.index"
			};

			variables.interceptors = [
				{class="coldbox.system.interceptors.Autowire", properties={}},
				{class="coldbox.system.interceptors.SES"}
			];

			variables.wirebox = {
				enabled = true,
				singletonReload = false
			};

			variables.datasources = {
				dsn = {name="@DATASOURCE@"}
			};

			variables.settings = {
				version = "1.0",
				release = "@RELEASE@",
				site = {
					title = "The Automaton"
				}
			};

			variables.logbox = {
				appenders = {
					console = { class="coldbox.system.logging.appenders.ConsoleAppender" }
				},
				root = {levelMin="FATAL", levelMax="INFO", appenders="*"}
			};

			variables.mailSettings = {server = "@MAIL_SERVER@"};

			variables.layoutSettings = {
				defaultLayout = "main.cfm",
				defaultView = ""
			};
		</cfscript>
	</cffunction>

</cfcomponent>
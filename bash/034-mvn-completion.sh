#!/usr/bin/env bash
# jieryn@gmail.com

_m2_complete()
{
  local cur goals

  COMPREPLY=()
  cur=${COMP_WORDS[COMP_CWORD]}
  cur=`echo $cur | sed 's/\\\\//g'`
  # run _m2_build_plugin_mojos to rebuild this list
  goals="ant:ant ant:clean ant:help"
  goals="$goals antlr:generate"
  goals="$goals antrun:help antrun:run"
  goals="$goals archetype:add-archetype-metadata archetype:crawl archetype:create archetype:create-from-project archetype:generate archetype:help archetype:integration-test archetype:jar archetype:update-local-catalog"
  goals="$goals assembly:assembly assembly:attach-assembly-descriptor assembly:attach-component-descriptor assembly:attached assembly:directory assembly:directory-inline assembly:directory-single assembly:single assembly:unpack"
  goals="$goals changelog:changelog changelog:dev-activity changelog:file-activity"
  goals="$goals changes:announcement-generate changes:announcement-mail changes:changes-report changes:changes-validate changes:help changes:jira-report changes:trac-report"
  goals="$goals checkstyle:check checkstyle:checkstyle checkstyle:help"
  goals="$goals clean:clean"
  goals="$goals clover:aggregate clover:check clover:clover clover:instrument clover:instrumentInternal clover:log clover:save-history"
  goals="$goals compiler:compile compiler:testCompile"
  goals="$goals continuum:add-ant-project continuum:add-maven-one-project continuum:add-maven-two-project continuum:add-shell-project continuum:ping"
  goals="$goals core-it:catch core-it:fork core-it:fork-goal core-it:generate-envar-properties core-it:generate-properties core-it:light-touch core-it:loadable core-it:package core-it:reachable core-it:runnable core-it:setter-touch core-it:throw core-it:touch core-it:tricky-params"
  goals="$goals dependency:analyze dependency:analyze-dep-mgt dependency:analyze-only dependency:analyze-report dependency:build-classpath dependency:copy dependency:copy-dependencies dependency:go-offline dependency:list dependency:purge-local-repository dependency:resolve dependency:resolve-plugins dependency:sources dependency:tree dependency:unpack dependency:unpack-dependencies"
  goals="$goals deploy:deploy deploy:deploy-file deploy:help"
  goals="$goals doap:generate doap:help"
  goals="$goals docck:check docck:help"
  goals="$goals ear:ear ear:generate-application-xml"
  goals="$goals eclipse:add-maven-repo eclipse:clean eclipse:configure-workspace eclipse:eclipse eclipse:install-plugins eclipse:m2eclipse eclipse:make-artifacts eclipse:myeclipse eclipse:myeclipse-clean eclipse:rad eclipse:rad-clean eclipse:to-maven"
  goals="$goals ejb:ejb"
  goals="$goals enforcer:display-info enforcer:enforce enforcer:enforce-once enforcer:help"
  goals="$goals gpg:sign gpg:sign-and-deploy-file"
  goals="$goals help:active-profiles help:all-profiles help:describe help:effective-pom help:effective-settings help:evaluate help:expressions help:help help:system"
  goals="$goals idea:clean idea:help idea:idea idea:module idea:project idea:workspace"
  goals="$goals install:install install:install-file"
  goals="$goals invoker:help invoker:install invoker:run"
  goals="$goals jar:jar jar:sign jar:sign-verify jar:test-jar"
  goals="$goals javadoc:aggregate javadoc:help javadoc:jar javadoc:javadoc javadoc:test-aggregate javadoc:test-jar javadoc:test-javadoc"
  goals="$goals jxr:jxr jxr:test-jxr"
  goals="$goals maven-one-plugin:convert maven-one-plugin:deploy-maven-one-repository maven-one-plugin:install-maven-one-repository maven-one-plugin:maven-one-plugin"
  goals="$goals patch:apply"
  goals="$goals plugin:addPluginArtifactMetadata plugin:descriptor plugin:help plugin:helpmojo plugin:report plugin:updateRegistry plugin:xdoc"
  goals="$goals pmd:check pmd:cpd pmd:cpd-check pmd:pmd"
  goals="$goals project-info-reports:cim project-info-reports:dependencies project-info-reports:dependency-convergence project-info-reports:dependency-management project-info-reports:help project-info-reports:index project-info-reports:issue-tracking project-info-reports:license project-info-reports:mailing-list project-info-reports:plugin-management project-info-reports:plugins project-info-reports:project-team project-info-reports:scm project-info-reports:summary"
  goals="$goals projecthelp:active-profiles projecthelp:describe projecthelp:effective-pom projecthelp:effective-settings"
  goals="$goals rar:rar"
  goals="$goals reactor:help reactor:make reactor:make-dependents reactor:make-scm-changes reactor:resume"
  goals="$goals release:branch release:clean release:help release:perform release:prepare release:rollback release:stage"
  goals="$goals remote-resources:bundle remote-resources:process"
  goals="$goals repository:bundle-create repository:bundle-pack repository:help"
  goals="$goals resources:copy-resources resources:help resources:resources resources:testResources"
  goals="$goals scm:add scm:bootstrap scm:branch scm:changelog scm:checkin scm:checkout scm:diff scm:edit scm:export scm:help scm:list scm:status scm:tag scm:unedit scm:update scm:update-subprojects scm:validate"
  goals="$goals shade:help shade:shade"
  goals="$goals site:attach-descriptor site:deploy site:help site:jar site:run site:site site:stage site:stage-deploy"
  goals="$goals source:aggregate source:jar source:test-jar"
  goals="$goals stage:copy"
  goals="$goals surefire:test"
  goals="$goals surefire-report:report surefire-report:report-only"
  goals="$goals verifier:verify"
  goals="$goals war:exploded war:help war:inplace war:manifest war:war"
  goals="$goals antlr:generate antlr:html"
  goals="$goals antlr3:antlr"
  goals="$goals appassembler:assemble appassembler:create-repository appassembler:generate-daemons"
  goals="$goals apt:eclipse apt:process apt:test-process"
  goals="$goals aspectj:aspectj-report aspectj:compile aspectj:help aspectj:test-compile"
  goals="$goals axistools:admin axistools:help axistools:java2wsdl axistools:wsdl2java"
  goals="$goals build-helper:add-source build-helper:add-test-source build-helper:attach-artifact build-helper:remove-project-artifact build-helper:reserve-network-port"
  goals="$goals build-on-demand:help build-on-demand:resolve"
  goals="$goals buildnumber:create"
  goals="$goals castor:generate"
  goals="$goals changelog:changelog changelog:dev-activity changelog:file-activity"
  goals="$goals changes:announcement-generate changes:announcement-mail changes:changes-report changes:jira-report"
  goals="$goals clirr:check clirr:clirr clirr:help"
  goals="$goals cobertura:check cobertura:clean cobertura:cobertura cobertura:dump-datafile cobertura:instrument"
  goals="$goals commons-attributes:compile commons-attributes:test-compile"
  goals="$goals dashboard:dashboard dashboard:persist"
  goals="$goals dbunit:compare dbunit:export dbunit:operation"
  goals="$goals dependency:copy dependency:copy-dependencies dependency:unpack dependency:unpack-dependencies"
  goals="$goals deploy-all:deploy-all deploy-all:deploy-poms"
  goals="$goals docbook:transform"
  goals="$goals emma:check emma:clean emma:emma emma:help emma:instrument"
  goals="$goals exec:exec exec:java"
  goals="$goals findbugs:findbugs"
  goals="$goals fit:run"
  goals="$goals fitnesse:fitnesse fitnesse:remotecall fitnesse:run"
  goals="$goals groovy:compile groovy:console groovy:execute groovy:generateStubs groovy:generateTestStubs groovy:help groovy:providers groovy:shell groovy:testCompile"
  goals="$goals gwt:compile gwt:eclipse gwt:eclipseTest gwt:generateAsync gwt:help gwt:i18n gwt:test"
  goals="$goals hibernate3:hbm2cfgxml hibernate3:hbm2dao hibernate3:hbm2ddl hibernate3:hbm2doc hibernate3:hbm2hbmxml hibernate3:hbm2java hibernate3:hbmtemplate"
  goals="$goals ianal:help ianal:verify-legal-files"
  goals="$goals ideauidesigner:javac2"
  goals="$goals idlj:generate idlj:generate-test"
  goals="$goals jalopy:format"
  goals="$goals jasperreports:compile-reports"
  goals="$goals javacc:help javacc:javacc javacc:jjdoc javacc:jjtree javacc:jjtree-javacc javacc:jtb javacc:jtb-javacc"
  goals="$goals javancss:check javancss:report"
  goals="$goals jaxb2:xjc"
  goals="$goals jboss:configure jboss:deploy jboss:harddeploy jboss:start jboss:stop jboss:undeploy"
  goals="$goals jboss-packaging:esb jboss-packaging:esb-exploded jboss-packaging:har jboss-packaging:har-exploded jboss-packaging:sar jboss-packaging:sar-exploded jboss-packaging:sar-inplace jboss-packaging:spring"
  goals="$goals jdepend:generate"
  goals="$goals jpox:enhance jpox:schema-create jpox:schema-dbinfo jpox:schema-delete jpox:schema-info jpox:schema-validate"
  goals="$goals jruby:run"
  goals="$goals jspc:compile jspc:testCompile"
  goals="$goals jxr:jxr"
  goals="$goals keytool:clean keytool:genkey"
  goals="$goals l10n:pseudo l10n:report"
  goals="$goals local-config:check local-config:configure local-config:touch"
  goals="$goals make:autoreconf make:chmod make:chown make:compile make:configure make:help make:make-clean make:make-dist make:make-install make:test make:validate-pom"
  goals="$goals minijar:minijars minijar:ueberjar"
  goals="$goals multibuild-optimizer:check-package-staleness multibuild-optimizer:help"
  goals="$goals native:compile native:compile-message native:initialize native:javah native:link native:ranlib native:resource-compile"
  goals="$goals native2ascii:native2ascii"
  goals="$goals nbm:autoupdate nbm:branding nbm:cluster nbm:directory nbm:jar nbm:nbm nbm:populate-repository nbm:run-ide nbm:run-platform"
  goals="$goals netbeans-freeform:generate-netbeans-project"
  goals="$goals openjpa:enhance"
  goals="$goals osxappbundle:bundle"
  goals="$goals ounce:application ounce:project ounce:project-only ounce:report ounce:scan"
  goals="$goals patch:apply patch:apply-directory patch:get patch:help patch:package-patches patch:purge-local-patch-artifact patch:resolve-patches"
  goals="$goals pde:attach pde:clean pde:ext pde:pde pde:test"
  goals="$goals platform-detector:detect platform-detector:help"
  goals="$goals project-archive:create project-archive:deploy project-archive:install"
  goals="$goals project-sources:deploy-project-sources project-sources:help project-sources:package-project-sources project-sources:relocate project-sources:resolve-project-sources"
  goals="$goals rat:check rat:rat"
  goals="$goals remote-source:get remote-source:help remote-source:relocate remote-source:resolve remote-source:unpack"
  goals="$goals retrotranslator:help retrotranslator:translate retrotranslator:translate-project retrotranslator:translate-war"
  goals="$goals settings:rsync"
  goals="$goals shade:shade"
  goals="$goals shell:help shell:shell"
  goals="$goals shitty:clean shitty:help shitty:install shitty:test"
  goals="$goals smc:smc smc:smcreports"
  goals="$goals solaris:generate-prototype solaris:package solaris:resources"
  goals="$goals springdoclet:springdoclet"
  goals="$goals sql:execute sql:help"
  goals="$goals sqlj:clean sqlj:help sqlj:sqlj"
  goals="$goals surefire-report:report"
  goals="$goals sysdeo-tomcat:generate sysdeo-tomcat:m2eclipse"
  goals="$goals taglist:taglist"
  goals="$goals tomcat:deploy tomcat:exploded tomcat:info tomcat:inplace tomcat:list tomcat:redeploy tomcat:resources tomcat:roles tomcat:run tomcat:run-war tomcat:sessions tomcat:start tomcat:stop tomcat:undeploy"
  goals="$goals versions:display-dependency-updates versions:display-plugin-updates versions:help versions:update-parent versions:update-properties"
  goals="$goals wagon:copy wagon:download wagon:download-single wagon:help wagon:list wagon:merge-maven-repos wagon:upload wagon:upload-single"
  goals="$goals was6:clean was6:ejbdeploy was6:help was6:installApp was6:wsAdmin was6:wsDefaultBindings was6:wsListApps was6:wsStartApp was6:wsStartServer was6:wsStopApp was6:wsStopServer was6:wsUninstallApp"
  goals="$goals webdoclet:webdoclet"
  goals="$goals weblogic:appc weblogic:clientgen weblogic:clientgen9 weblogic:deploy weblogic:jwsc weblogic:listapps weblogic:redeploy weblogic:servicegen weblogic:start weblogic:stop weblogic:undeploy weblogic:wsdlgen"
  goals="$goals webstart:jnlp webstart:report"
  goals="$goals xdoclet:xdoclet"
  goals="$goals xml:transform xml:validate"
  goals="$goals xmlbeans:xmlbeans xmlbeans:xmlbeans-test"
  goals="$goals xslt:transform"
  COMPREPLY=($(compgen -W "${goals}" ${cur} | sed 's/\\\\//g') )
}

complete -F _m2_complete -o filenames mvn



# Use curl to find plugins located at URL=$1
_m2_find_plugins()
{
  echo $(curl $1 2>/dev/null | grep '\-plugin' | perl -pi -e 's/.*?<a.*?>(.*?)\/?<.*/$1/g')
}

# Use help:describe on $1=groupId, $2=artifactId to find mojos
_m2_find_mojo()
{
  echo $(mvn help:describe -DgroupId="$1" -DartifactId="$2" | grep -E '^[[:alnum:]-]+:[[:alnum:]-]+$')
}

# only run this when you want to update the lists used in _m2_complete
_m2_build_plugin_mojos()
{
  # handle the official maven plugins
  for plugin in $(_m2_find_plugins http://repo1.maven.org/maven2/org/apache/maven/plugins/)
  do
    echo "$(_m2_find_mojo org.apache.maven.plugins $plugin)"
  done

  # handle the codehaus plugins
  for plugin in $(_m2_find_plugins http://repository.codehaus.org/org/codehaus/mojo/)
  do
    echo "$(_m2_find_mojo org.codehaus.mojo $plugin)"
  done
}

#_m2_build_plugin_mojos

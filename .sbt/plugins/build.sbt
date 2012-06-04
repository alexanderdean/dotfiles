# https://github.com/aemoncannon/ensime-sbt-cmd
addSbtPlugin("org.ensime" % "ensime-sbt-cmd" % "0.0.10")

# https://github.com/sbt/sbt-assembly
resolvers += Resolver.url("artifactory", url("http://scalasbt.artifactoryonline.com/scalasbt/sbt-plugin-releases"))(Resolver.ivyStylePatterns)

addSbtPlugin("com.eed3si9n" % "sbt-assembly" % "0.8.3")
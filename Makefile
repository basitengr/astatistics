# This Makefile is for the Astatistics extension to perl.
#
# It was generated automatically by MakeMaker version
# 6.62 (Revision: 66200) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: (q[build])
#

#   MakeMaker Parameters:

#     ABSTRACT => q[Catalyst based application]
#     AUTHOR => [q[,,,]]
#     BUILD_REQUIRES => { Test::More=>q[0.88], ExtUtils::MakeMaker=>q[6.36] }
#     CONFIGURE_REQUIRES => {  }
#     DISTNAME => q[Astatistics]
#     EXE_FILES => [q[script/astatistics_cgi.pl], q[script/astatistics_create.pl], q[script/astatistics_fastcgi.pl], q[script/astatistics_server.pl], q[script/astatistics_test.pl], q[script/cdr+queue_log_importer.pl]]
#     LICENSE => q[perl]
#     NAME => q[Astatistics]
#     NO_META => q[1]
#     PREREQ_PM => { DateTime=>q[0], DateTime::Format::MySQL=>q[0], File::Remove=>q[0], Catalyst::Plugin::ConfigLoader=>q[0], Catalyst::Devel=>q[1.37], Layout::Manager=>q[0], Test::NoWarnings=>q[0], Chart::Clicker=>q[0], Catalyst::View::Wkhtmltopdf=>q[0], Catalyst::Plugin::Session::Store::FastMmap=>q[0.16], CatalystX::Component::Traits=>q[0.16], Catalyst::Plugin::Session::State::Cookie=>q[0.17], Catalyst::Plugin::Authorization::Roles=>q[0.06], Catalyst::ScriptRole=>q[0], Config::General=>q[0], Catalyst::Helper::View::Graphics::Primitive=>q[0], Catalyst::Authentication::Store::DBIx::Class=>q[0.1503], Catalyst::View::TT=>q[0.39], Catalyst::Helper::View::Wkhtmltopdf=>q[0], ExtUtils::MakeMaker=>q[6.36], Class::DBI=>q[0], Test::More=>q[0.88], DateTime::Format::SQLite=>q[0], Catalyst::Restarter=>q[0], DBD::SQLite=>q[0], DBIx::Class::ResultSet=>q[0], Module::Runtime=>q[0], Catalyst::Script::Server=>q[0], Catalyst::ScriptRunner=>q[0], Graphics::Primitive=>q[0], Test::Output=>q[0], DBIx::Class::Schema::Loader=>q[0], DBIx::Class=>q[0], Moose=>q[2.06020], Hash::MultiValue=>q[0], Paper::Specs=>q[0], namespace::autoclean=>q[0.13], SQL::Translator=>q[0], Graphics::Color::RGB=>q[0], Catalyst::Plugin::Static::Simple=>q[0], YAML::Tiny=>q[0], Class::CSV=>q[0], Catalyst::Helper::View::JSON=>q[0], Object::Signature=>q[0], Catalyst::Action::RenderView=>q[0], Params::Validate=>q[0.97], Catalyst::Runtime=>q[5.80025], Task::Catalyst=>q[0] }
#     VERSION => q[0.01]
#     VERSION_FROM => q[lib/Astatistics.pm]
#     dist => { PREOP=>q[$(PERL) -I. "-MModule::Install::Admin" -e "dist_preop(q($(DISTVNAME)))"] }
#     realclean => { FILES=>q[MYMETA.yml] }
#     test => { TESTS=>q[t/01app.t t/02pod.t t/03podcoverage.t t/controller_Results.t t/controller_Stats.t t/controller_Users.t t/model_Astatistics.t t/model_Asterisk.t t/model_QueueLogVirt.t t/model_Stats.t t/view_GP.t t/view_GP_PDF.t t/view_TT.t t/view_Wkhtmltopdf.t] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /usr/lib/perl/5.10/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = cc
CCCDLFLAGS = -fPIC
CCDLFLAGS = -Wl,-E
DLEXT = so
DLSRC = dl_dlopen.xs
EXE_EXT = 
FULL_AR = /usr/bin/ar
LD = cc
LDDLFLAGS = -shared -O2 -g -L/usr/local/lib -fstack-protector
LDFLAGS =  -fstack-protector -L/usr/local/lib
LIBC = /lib/libc-2.11.2.so
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = linux
OSVERS = 2.6.32-5-686
RANLIB = :
SITELIBEXP = /usr/local/share/perl/5.10.1
SITEARCHEXP = /usr/local/lib/perl/5.10.1
SO = so
VENDORARCHEXP = /usr/lib/perl5
VENDORLIBEXP = /usr/share/perl5


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
DIRFILESEP = /
DFSEP = $(DIRFILESEP)
NAME = Astatistics
NAME_SYM = Astatistics
VERSION = 0.01
VERSION_MACRO = VERSION
VERSION_SYM = 0_01
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 0.01
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INST_MAN1DIR = blib/man1
INST_MAN3DIR = blib/man3
MAN1EXT = 1p
MAN3EXT = 3pm
INSTALLDIRS = site
DESTDIR = 
PREFIX = $(SITEPREFIX)
PERLPREFIX = /usr
SITEPREFIX = /usr/local
VENDORPREFIX = /usr
INSTALLPRIVLIB = /usr/share/perl/5.10
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = /usr/local/share/perl/5.10.1
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = /usr/share/perl5
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = /usr/lib/perl/5.10
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = /usr/local/lib/perl/5.10.1
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = /usr/lib/perl5
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = /usr/bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = /usr/local/bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = /usr/bin
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = /usr/bin
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLSITESCRIPT = /usr/local/bin
DESTINSTALLSITESCRIPT = $(DESTDIR)$(INSTALLSITESCRIPT)
INSTALLVENDORSCRIPT = /usr/bin
DESTINSTALLVENDORSCRIPT = $(DESTDIR)$(INSTALLVENDORSCRIPT)
INSTALLMAN1DIR = /usr/share/man/man1
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = /usr/local/man/man1
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = /usr/share/man/man1
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = /usr/share/man/man3
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = /usr/local/man/man3
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = /usr/share/man/man3
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB =
PERL_ARCHLIB = /usr/lib/perl/5.10
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /usr/lib/perl/5.10/CORE
PERL = /usr/bin/perl "-Iinc"
FULLPERL = /usr/bin/perl "-Iinc"
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-Iinc" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-Iinc" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-Iinc" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_DIR = 755
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = /usr/local/share/perl/5.10.1/ExtUtils/MakeMaker.pm
MM_VERSION  = 6.62
MM_REVISION = 66200

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
MAKE = make
FULLEXT = Astatistics
BASEEXT = Astatistics
PARENT_NAME = 
DLBASE = $(BASEEXT)
VERSION_FROM = lib/Astatistics.pm
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = 
C_FILES  = 
O_FILES  = 
H_FILES  = 
MAN1PODS = script/astatistics_cgi.pl \
	script/astatistics_create.pl \
	script/astatistics_fastcgi.pl \
	script/astatistics_server.pl \
	script/astatistics_test.pl
MAN3PODS = lib/Astatistics.pm \
	lib/Astatistics/Controller/Root.pm \
	lib/Astatistics/Controller/Stats.pm \
	lib/Astatistics/Controller/Users.pm \
	lib/Astatistics/Model/Astatistics.pm \
	lib/Astatistics/Model/Asterisk.pm \
	lib/Astatistics/Model/QueueLogVirt.pm \
	lib/Astatistics/Schema/Result/Role.pm \
	lib/Astatistics/Schema/Result/StGroup.pm \
	lib/Astatistics/Schema/Result/StGroupsToRole.pm \
	lib/Astatistics/Schema/Result/StGroupsToStGroup.pm \
	lib/Astatistics/Schema/Result/Stat.pm \
	lib/Astatistics/Schema/Result/StatsToRole.pm \
	lib/Astatistics/Schema/Result/StatsToStGroup.pm \
	lib/Astatistics/Schema/Result/User.pm \
	lib/Astatistics/Schema/Result/UsersToRole.pm \
	lib/Astatistics/View/GP.pm \
	lib/Astatistics/View/GP_PDF.pm \
	lib/Astatistics/View/TT.pm \
	lib/Astatistics/View/Wkhtmltopdf.pm \
	lib/Asterisk/Schema/Result/AgentStatus.pm \
	lib/Asterisk/Schema/Result/CallStatus.pm \
	lib/Asterisk/Schema/Result/Cdr.pm \
	lib/Asterisk/Schema/Result/QueueLog.pm \
	lib/Asterisk/Schema/Result/QueueLogProcessed.pm \
	lib/Asterisk/Schema/Result/QueueMember.pm \
	lib/Asterisk/Schema/Result/QueueMemberTable.pm \
	lib/Asterisk/Schema/Result/QueueTable.pm

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)$(DFSEP)Config.pm $(PERL_INC)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)
INST_ARCHLIBDIR  = $(INST_ARCHLIB)

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = 
INST_DYNAMIC     = 
INST_BOOT        = 

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = lib/Astatistics.pm \
	lib/Astatistics/Controller/Root.pm \
	lib/Astatistics/Controller/Stats.pm \
	lib/Astatistics/Controller/Users.pm \
	lib/Astatistics/Model/Astatistics.pm \
	lib/Astatistics/Model/Astatistics.pm.new \
	lib/Astatistics/Model/Asterisk.pm \
	lib/Astatistics/Model/Asterisk.pm.new \
	lib/Astatistics/Model/QueueLogVirt.pm \
	lib/Astatistics/Schema.pm \
	lib/Astatistics/Schema/Result/Role.pm \
	lib/Astatistics/Schema/Result/StGroup.pm \
	lib/Astatistics/Schema/Result/StGroupsToRole.pm \
	lib/Astatistics/Schema/Result/StGroupsToStGroup.pm \
	lib/Astatistics/Schema/Result/Stat.pm \
	lib/Astatistics/Schema/Result/StatsToRole.pm \
	lib/Astatistics/Schema/Result/StatsToStGroup.pm \
	lib/Astatistics/Schema/Result/User.pm \
	lib/Astatistics/Schema/Result/UsersToRole.pm \
	lib/Astatistics/View/GP.pm \
	lib/Astatistics/View/GP_PDF.pm \
	lib/Astatistics/View/TT.pm \
	lib/Astatistics/View/Wkhtmltopdf.pm \
	lib/Asterisk/Schema.pm \
	lib/Asterisk/Schema/Result/AgentStatus.pm \
	lib/Asterisk/Schema/Result/CallStatus.pm \
	lib/Asterisk/Schema/Result/Cdr.pm \
	lib/Asterisk/Schema/Result/QueueLog.pm \
	lib/Asterisk/Schema/Result/QueueLogProcessed.pm \
	lib/Asterisk/Schema/Result/QueueMember.pm \
	lib/Asterisk/Schema/Result/QueueMemberTable.pm \
	lib/Asterisk/Schema/Result/QueueTable.pm \
	parse.pl

PM_TO_BLIB = lib/Asterisk/Schema/Result/QueueMemberTable.pm \
	blib/lib/Asterisk/Schema/Result/QueueMemberTable.pm \
	lib/Astatistics/Model/Astatistics.pm \
	blib/lib/Astatistics/Model/Astatistics.pm \
	lib/Asterisk/Schema/Result/QueueTable.pm \
	blib/lib/Asterisk/Schema/Result/QueueTable.pm \
	lib/Astatistics/Model/Astatistics.pm.new \
	blib/lib/Astatistics/Model/Astatistics.pm.new \
	lib/Astatistics/Schema.pm \
	blib/lib/Astatistics/Schema.pm \
	lib/Astatistics/Schema/Result/StatsToStGroup.pm \
	blib/lib/Astatistics/Schema/Result/StatsToStGroup.pm \
	lib/Astatistics/Schema/Result/UsersToRole.pm \
	blib/lib/Astatistics/Schema/Result/UsersToRole.pm \
	lib/Asterisk/Schema/Result/QueueMember.pm \
	blib/lib/Asterisk/Schema/Result/QueueMember.pm \
	lib/Astatistics/Model/Asterisk.pm \
	blib/lib/Astatistics/Model/Asterisk.pm \
	lib/Astatistics/Model/Asterisk.pm.new \
	blib/lib/Astatistics/Model/Asterisk.pm.new \
	lib/Astatistics/Controller/Root.pm \
	blib/lib/Astatistics/Controller/Root.pm \
	lib/Astatistics/View/GP_PDF.pm \
	blib/lib/Astatistics/View/GP_PDF.pm \
	lib/Astatistics/Schema/Result/User.pm \
	blib/lib/Astatistics/Schema/Result/User.pm \
	parse.pl \
	$(INST_LIB)/parse.pl \
	lib/Asterisk/Schema.pm \
	blib/lib/Asterisk/Schema.pm \
	lib/Astatistics/View/Wkhtmltopdf.pm \
	blib/lib/Astatistics/View/Wkhtmltopdf.pm \
	lib/Astatistics/View/TT.pm \
	blib/lib/Astatistics/View/TT.pm \
	lib/Astatistics/Controller/Stats.pm \
	blib/lib/Astatistics/Controller/Stats.pm \
	lib/Asterisk/Schema/Result/QueueLogProcessed.pm \
	blib/lib/Asterisk/Schema/Result/QueueLogProcessed.pm \
	lib/Astatistics/Schema/Result/Stat.pm \
	blib/lib/Astatistics/Schema/Result/Stat.pm \
	lib/Astatistics/Schema/Result/StatsToRole.pm \
	blib/lib/Astatistics/Schema/Result/StatsToRole.pm \
	lib/Astatistics/Schema/Result/StGroupsToRole.pm \
	blib/lib/Astatistics/Schema/Result/StGroupsToRole.pm \
	lib/Asterisk/Schema/Result/AgentStatus.pm \
	blib/lib/Asterisk/Schema/Result/AgentStatus.pm \
	lib/Astatistics/View/GP.pm \
	blib/lib/Astatistics/View/GP.pm \
	lib/Astatistics/Schema/Result/Role.pm \
	blib/lib/Astatistics/Schema/Result/Role.pm \
	lib/Asterisk/Schema/Result/CallStatus.pm \
	blib/lib/Asterisk/Schema/Result/CallStatus.pm \
	lib/Asterisk/Schema/Result/QueueLog.pm \
	blib/lib/Asterisk/Schema/Result/QueueLog.pm \
	lib/Asterisk/Schema/Result/Cdr.pm \
	blib/lib/Asterisk/Schema/Result/Cdr.pm \
	lib/Astatistics/Controller/Users.pm \
	blib/lib/Astatistics/Controller/Users.pm \
	lib/Astatistics/Model/QueueLogVirt.pm \
	blib/lib/Astatistics/Model/QueueLogVirt.pm \
	lib/Astatistics/Schema/Result/StGroupsToStGroup.pm \
	blib/lib/Astatistics/Schema/Result/StGroupsToStGroup.pm \
	lib/Astatistics/Schema/Result/StGroup.pm \
	blib/lib/Astatistics/Schema/Result/StGroup.pm \
	lib/Astatistics.pm \
	blib/lib/Astatistics.pm


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 6.62
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$ARGV[0], $$ARGV[1], 0, 1, 1)' --



# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:
SHELL = /bin/sh
CHMOD = chmod
CP = cp
MV = mv
NOOP = $(TRUE)
NOECHO = @
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1
MKPATH = $(ABSPERLRUN) -MExtUtils::Command -e 'mkpath' --
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) -MExtUtils::Command -e 'eqtime' --
FALSE = false
TRUE = true
ECHO = echo
ECHO_N = echo -n
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e 'install([ from_to => {@ARGV}, verbose => '\''$(VERBINST)'\'', uninstall_shadows => '\''$(UNINST)'\'', dir_mode => '\''$(PERM_DIR)'\'' ]);' --
DOC_INSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'perllocal_install' --
UNINSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'uninstall' --
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'warn_if_old_packlist' --
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = $(ABSPERLRUN) -MExtUtils::MY -e 'MY->fixin(shift)' --


# --- MakeMaker makemakerdflt section:
makemakerdflt : all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section:
TAR = tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip --best
SUFFIX = .gz
SHAR = shar
PREOP = $(PERL) -I. "-MModule::Install::Admin" -e "dist_preop(q($(DISTVNAME)))"
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist
DISTNAME = Astatistics
DISTVNAME = Astatistics-0.01


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir



# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(INST_DYNAMIC) $(INST_BOOT)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all  \
	script/astatistics_server.pl \
	script/astatistics_test.pl \
	script/astatistics_fastcgi.pl \
	script/astatistics_create.pl \
	script/astatistics_cgi.pl \
	lib/Asterisk/Schema/Result/QueueMemberTable.pm \
	lib/Astatistics/Model/Astatistics.pm \
	lib/Asterisk/Schema/Result/QueueTable.pm \
	lib/Astatistics/View/Wkhtmltopdf.pm \
	lib/Astatistics/View/TT.pm \
	lib/Astatistics/Controller/Stats.pm \
	lib/Asterisk/Schema/Result/QueueLogProcessed.pm \
	lib/Astatistics/Schema/Result/Stat.pm \
	lib/Astatistics/Schema/Result/StatsToStGroup.pm \
	lib/Astatistics/Schema/Result/StGroupsToRole.pm \
	lib/Astatistics/Schema/Result/StatsToRole.pm \
	lib/Asterisk/Schema/Result/AgentStatus.pm \
	lib/Astatistics/Schema/Result/UsersToRole.pm \
	lib/Astatistics/View/GP.pm \
	lib/Asterisk/Schema/Result/QueueMember.pm \
	lib/Astatistics/Model/Asterisk.pm \
	lib/Astatistics/Controller/Root.pm \
	lib/Astatistics/Schema/Result/Role.pm \
	lib/Asterisk/Schema/Result/CallStatus.pm \
	lib/Asterisk/Schema/Result/QueueLog.pm \
	lib/Asterisk/Schema/Result/Cdr.pm \
	lib/Astatistics/Controller/Users.pm \
	lib/Astatistics/View/GP_PDF.pm \
	lib/Astatistics/Schema/Result/User.pm \
	lib/Astatistics/Model/QueueLogVirt.pm \
	lib/Astatistics/Schema/Result/StGroupsToStGroup.pm \
	lib/Astatistics/Schema/Result/StGroup.pm \
	lib/Astatistics.pm
	$(NOECHO) $(POD2MAN) --section=1 --perm_rw=$(PERM_RW) \
	  script/astatistics_server.pl $(INST_MAN1DIR)/astatistics_server.pl.$(MAN1EXT) \
	  script/astatistics_test.pl $(INST_MAN1DIR)/astatistics_test.pl.$(MAN1EXT) \
	  script/astatistics_fastcgi.pl $(INST_MAN1DIR)/astatistics_fastcgi.pl.$(MAN1EXT) \
	  script/astatistics_create.pl $(INST_MAN1DIR)/astatistics_create.pl.$(MAN1EXT) \
	  script/astatistics_cgi.pl $(INST_MAN1DIR)/astatistics_cgi.pl.$(MAN1EXT) 
	$(NOECHO) $(POD2MAN) --section=3 --perm_rw=$(PERM_RW) \
	  lib/Asterisk/Schema/Result/QueueMemberTable.pm $(INST_MAN3DIR)/Asterisk::Schema::Result::QueueMemberTable.$(MAN3EXT) \
	  lib/Astatistics/Model/Astatistics.pm $(INST_MAN3DIR)/Astatistics::Model::Astatistics.$(MAN3EXT) \
	  lib/Asterisk/Schema/Result/QueueTable.pm $(INST_MAN3DIR)/Asterisk::Schema::Result::QueueTable.$(MAN3EXT) \
	  lib/Astatistics/View/Wkhtmltopdf.pm $(INST_MAN3DIR)/Astatistics::View::Wkhtmltopdf.$(MAN3EXT) \
	  lib/Astatistics/View/TT.pm $(INST_MAN3DIR)/Astatistics::View::TT.$(MAN3EXT) \
	  lib/Astatistics/Controller/Stats.pm $(INST_MAN3DIR)/Astatistics::Controller::Stats.$(MAN3EXT) \
	  lib/Asterisk/Schema/Result/QueueLogProcessed.pm $(INST_MAN3DIR)/Asterisk::Schema::Result::QueueLogProcessed.$(MAN3EXT) \
	  lib/Astatistics/Schema/Result/Stat.pm $(INST_MAN3DIR)/Astatistics::Schema::Result::Stat.$(MAN3EXT) \
	  lib/Astatistics/Schema/Result/StatsToStGroup.pm $(INST_MAN3DIR)/Astatistics::Schema::Result::StatsToStGroup.$(MAN3EXT) \
	  lib/Astatistics/Schema/Result/StGroupsToRole.pm $(INST_MAN3DIR)/Astatistics::Schema::Result::StGroupsToRole.$(MAN3EXT) \
	  lib/Astatistics/Schema/Result/StatsToRole.pm $(INST_MAN3DIR)/Astatistics::Schema::Result::StatsToRole.$(MAN3EXT) \
	  lib/Asterisk/Schema/Result/AgentStatus.pm $(INST_MAN3DIR)/Asterisk::Schema::Result::AgentStatus.$(MAN3EXT) \
	  lib/Astatistics/Schema/Result/UsersToRole.pm $(INST_MAN3DIR)/Astatistics::Schema::Result::UsersToRole.$(MAN3EXT) \
	  lib/Astatistics/View/GP.pm $(INST_MAN3DIR)/Astatistics::View::GP.$(MAN3EXT) \
	  lib/Asterisk/Schema/Result/QueueMember.pm $(INST_MAN3DIR)/Asterisk::Schema::Result::QueueMember.$(MAN3EXT) \
	  lib/Astatistics/Model/Asterisk.pm $(INST_MAN3DIR)/Astatistics::Model::Asterisk.$(MAN3EXT) \
	  lib/Astatistics/Controller/Root.pm $(INST_MAN3DIR)/Astatistics::Controller::Root.$(MAN3EXT) \
	  lib/Astatistics/Schema/Result/Role.pm $(INST_MAN3DIR)/Astatistics::Schema::Result::Role.$(MAN3EXT) \
	  lib/Asterisk/Schema/Result/CallStatus.pm $(INST_MAN3DIR)/Asterisk::Schema::Result::CallStatus.$(MAN3EXT) \
	  lib/Asterisk/Schema/Result/QueueLog.pm $(INST_MAN3DIR)/Asterisk::Schema::Result::QueueLog.$(MAN3EXT) \
	  lib/Asterisk/Schema/Result/Cdr.pm $(INST_MAN3DIR)/Asterisk::Schema::Result::Cdr.$(MAN3EXT) \
	  lib/Astatistics/Controller/Users.pm $(INST_MAN3DIR)/Astatistics::Controller::Users.$(MAN3EXT) \
	  lib/Astatistics/View/GP_PDF.pm $(INST_MAN3DIR)/Astatistics::View::GP_PDF.$(MAN3EXT) \
	  lib/Astatistics/Schema/Result/User.pm $(INST_MAN3DIR)/Astatistics::Schema::Result::User.$(MAN3EXT) \
	  lib/Astatistics/Model/QueueLogVirt.pm $(INST_MAN3DIR)/Astatistics::Model::QueueLogVirt.$(MAN3EXT) \
	  lib/Astatistics/Schema/Result/StGroupsToStGroup.pm $(INST_MAN3DIR)/Astatistics::Schema::Result::StGroupsToStGroup.$(MAN3EXT) 
	$(NOECHO) $(POD2MAN) --section=3 --perm_rw=$(PERM_RW) \
	  lib/Astatistics/Schema/Result/StGroup.pm $(INST_MAN3DIR)/Astatistics::Schema::Result::StGroup.$(MAN3EXT) \
	  lib/Astatistics.pm $(INST_MAN3DIR)/Astatistics.$(MAN3EXT) 




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:

EXE_FILES = script/astatistics_cgi.pl script/astatistics_create.pl script/astatistics_fastcgi.pl script/astatistics_server.pl script/astatistics_test.pl script/cdr+queue_log_importer.pl

pure_all :: $(INST_SCRIPT)/astatistics_server.pl $(INST_SCRIPT)/cdr+queue_log_importer.pl $(INST_SCRIPT)/astatistics_test.pl $(INST_SCRIPT)/astatistics_fastcgi.pl $(INST_SCRIPT)/astatistics_create.pl $(INST_SCRIPT)/astatistics_cgi.pl
	$(NOECHO) $(NOOP)

realclean ::
	$(RM_F) \
	  $(INST_SCRIPT)/astatistics_server.pl $(INST_SCRIPT)/cdr+queue_log_importer.pl \
	  $(INST_SCRIPT)/astatistics_test.pl $(INST_SCRIPT)/astatistics_fastcgi.pl \
	  $(INST_SCRIPT)/astatistics_create.pl $(INST_SCRIPT)/astatistics_cgi.pl 

$(INST_SCRIPT)/astatistics_server.pl : script/astatistics_server.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/astatistics_server.pl
	$(CP) script/astatistics_server.pl $(INST_SCRIPT)/astatistics_server.pl
	$(FIXIN) $(INST_SCRIPT)/astatistics_server.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/astatistics_server.pl

$(INST_SCRIPT)/cdr+queue_log_importer.pl : script/cdr+queue_log_importer.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/cdr+queue_log_importer.pl
	$(CP) script/cdr+queue_log_importer.pl $(INST_SCRIPT)/cdr+queue_log_importer.pl
	$(FIXIN) $(INST_SCRIPT)/cdr+queue_log_importer.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/cdr+queue_log_importer.pl

$(INST_SCRIPT)/astatistics_test.pl : script/astatistics_test.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/astatistics_test.pl
	$(CP) script/astatistics_test.pl $(INST_SCRIPT)/astatistics_test.pl
	$(FIXIN) $(INST_SCRIPT)/astatistics_test.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/astatistics_test.pl

$(INST_SCRIPT)/astatistics_fastcgi.pl : script/astatistics_fastcgi.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/astatistics_fastcgi.pl
	$(CP) script/astatistics_fastcgi.pl $(INST_SCRIPT)/astatistics_fastcgi.pl
	$(FIXIN) $(INST_SCRIPT)/astatistics_fastcgi.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/astatistics_fastcgi.pl

$(INST_SCRIPT)/astatistics_create.pl : script/astatistics_create.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/astatistics_create.pl
	$(CP) script/astatistics_create.pl $(INST_SCRIPT)/astatistics_create.pl
	$(FIXIN) $(INST_SCRIPT)/astatistics_create.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/astatistics_create.pl

$(INST_SCRIPT)/astatistics_cgi.pl : script/astatistics_cgi.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/astatistics_cgi.pl
	$(CP) script/astatistics_cgi.pl $(INST_SCRIPT)/astatistics_cgi.pl
	$(FIXIN) $(INST_SCRIPT)/astatistics_cgi.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/astatistics_cgi.pl



# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  *$(LIB_EXT) core \
	  core.[0-9] $(INST_ARCHAUTODIR)/extralibs.all \
	  core.[0-9][0-9] $(BASEEXT).bso \
	  pm_to_blib.ts MYMETA.json \
	  core.[0-9][0-9][0-9][0-9] MYMETA.yml \
	  $(BASEEXT).x $(BOOTSTRAP) \
	  perl$(EXE_EXT) tmon.out \
	  *$(OBJ_EXT) pm_to_blib \
	  $(INST_ARCHAUTODIR)/extralibs.ld blibdirs.ts \
	  core.[0-9][0-9][0-9][0-9][0-9] *perl.core \
	  core.*perl.*.? $(MAKE_APERL_FILE) \
	  $(BASEEXT).def perl \
	  core.[0-9][0-9][0-9] mon.out \
	  lib$(BASEEXT).def perlmain.c \
	  perl.exe so_locations \
	  $(BASEEXT).exp 
	- $(RM_RF) \
	  blib 
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(MAKEFILE_OLD) $(FIRST_MAKEFILE) 
	- $(RM_RF) \
	  MYMETA.yml $(DISTVNAME) 


# --- MakeMaker metafile section:
metafile :
	$(NOECHO) $(NOOP)


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ */*~ *.orig */*.orig *.bak */*.bak *.old */*.old 



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e 'print '\''Warning: Makefile possibly out of date with $(VERSION_FROM)'\''' \
	  -e '    if -e '\''$(VERSION_FROM)'\'' and -M '\''$(VERSION_FROM)'\'' < -M '\''$(FIRST_MAKEFILE)'\'';' --

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir  
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL "build"
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:

ci :
	$(PERLRUN) "-MExtUtils::Manifest=maniread" \
	  -e "@all = keys %{ maniread() };" \
	  -e "print(qq{Executing $(CI) @all\n}); system(qq{$(CI) @all});" \
	  -e "print(qq{Executing $(RCS_LABEL) ...\n}); system(qq{$(RCS_LABEL) @all});"


# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -e q{META.yml};' \
	  -e 'eval { maniadd({q{META.yml} => q{Module YAML meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.yml to MANIFEST: $${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -f q{META.json};' \
	  -e 'eval { maniadd({q{META.json} => q{Module JSON meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.json to MANIFEST: $${'\''@'\''}\n"' --



# --- MakeMaker distsignature section:
distsignature : create_distdir
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{SIGNATURE} => q{Public-key signature (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add SIGNATURE to MANIFEST: $${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section:

install :: pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLARCHLIB)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLARCHLIB) \
		$(INST_BIN) $(DESTINSTALLBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)


pure_site_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLSITELIB) \
		$(INST_ARCHLIB) $(DESTINSTALLSITEARCH) \
		$(INST_BIN) $(DESTINSTALLSITEBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSITESCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLSITEMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLSITEMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)

pure_vendor_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLVENDORARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLVENDORLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLVENDORARCH) \
		$(INST_BIN) $(DESTINSTALLVENDORBIN) \
		$(INST_SCRIPT) $(DESTINSTALLVENDORSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLVENDORMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLVENDORMAN3DIR)

doc_perl_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_site_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_vendor_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLVENDORLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::
	$(NOECHO) $(UNINSTALL) $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist

uninstall_from_vendordirs ::
	$(NOECHO) $(UNINSTALL) $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE :
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:
# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL "build"
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	$(FALSE)



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /usr/bin/perl

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS= \
		build


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/01app.t t/02pod.t t/03podcoverage.t t/controller_Results.t t/controller_Stats.t t/controller_Users.t t/model_Astatistics.t t/model_Asterisk.t t/model_QueueLogVirt.t t/model_Stats.t t/view_GP.t t/view_GP_PDF.t t/view_TT.t t/view_Wkhtmltopdf.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)


test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-e" "test_harness($(TEST_VERBOSE), 'inc', '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-Iinc" "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="$(DISTNAME)" VERSION="0.01">' > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT>Catalyst based application</ABSTRACT>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <AUTHOR>,,,</AUTHOR>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Action::RenderView" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Authentication::Store::DBIx::Class" VERSION="0.1503" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Devel" VERSION="1.37" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Helper::View::Graphics::Primitive" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Helper::View::JSON" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Helper::View::Wkhtmltopdf" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::Authorization::Roles" VERSION="0.06" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::ConfigLoader" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::Session::State::Cookie" VERSION="0.17" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::Session::Store::FastMmap" VERSION="0.16" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::Static::Simple" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Restarter" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Runtime" VERSION="5.80025" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Script::Server" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::ScriptRole" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::ScriptRunner" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::View::TT" VERSION="0.39" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::View::Wkhtmltopdf" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="CatalystX::Component::Traits" VERSION="0.16" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Chart::Clicker" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::CSV" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::DBI" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Config::General" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="DBD::SQLite" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="DBIx::Class" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="DBIx::Class::ResultSet" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="DBIx::Class::Schema::Loader" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="DateTime::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="DateTime::Format::MySQL" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="DateTime::Format::SQLite" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="File::Remove" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Graphics::Color::RGB" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Graphics::Primitive" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Hash::MultiValue" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Layout::Manager" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Module::Runtime" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::" VERSION="2.0602" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Object::Signature" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Paper::Specs" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Params::Validate" VERSION="0.97" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="SQL::Translator" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Task::Catalyst" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Test::NoWarnings" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Test::Output" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="YAML::Tiny" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="namespace::autoclean" VERSION="0.13" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="i486-linux-gnu-thread-multi-5.10" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(FIRST_MAKEFILE) $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Asterisk/Schema/Result/QueueMemberTable.pm blib/lib/Asterisk/Schema/Result/QueueMemberTable.pm \
	  lib/Astatistics/Model/Astatistics.pm blib/lib/Astatistics/Model/Astatistics.pm \
	  lib/Asterisk/Schema/Result/QueueTable.pm blib/lib/Asterisk/Schema/Result/QueueTable.pm \
	  lib/Astatistics/Model/Astatistics.pm.new blib/lib/Astatistics/Model/Astatistics.pm.new \
	  lib/Astatistics/Schema.pm blib/lib/Astatistics/Schema.pm \
	  lib/Astatistics/Schema/Result/StatsToStGroup.pm blib/lib/Astatistics/Schema/Result/StatsToStGroup.pm \
	  lib/Astatistics/Schema/Result/UsersToRole.pm blib/lib/Astatistics/Schema/Result/UsersToRole.pm \
	  lib/Asterisk/Schema/Result/QueueMember.pm blib/lib/Asterisk/Schema/Result/QueueMember.pm \
	  lib/Astatistics/Model/Asterisk.pm blib/lib/Astatistics/Model/Asterisk.pm \
	  lib/Astatistics/Model/Asterisk.pm.new blib/lib/Astatistics/Model/Asterisk.pm.new \
	  lib/Astatistics/Controller/Root.pm blib/lib/Astatistics/Controller/Root.pm \
	  lib/Astatistics/View/GP_PDF.pm blib/lib/Astatistics/View/GP_PDF.pm \
	  lib/Astatistics/Schema/Result/User.pm blib/lib/Astatistics/Schema/Result/User.pm \
	  parse.pl $(INST_LIB)/parse.pl \
	  lib/Asterisk/Schema.pm blib/lib/Asterisk/Schema.pm \
	  lib/Astatistics/View/Wkhtmltopdf.pm blib/lib/Astatistics/View/Wkhtmltopdf.pm \
	  lib/Astatistics/View/TT.pm blib/lib/Astatistics/View/TT.pm \
	  lib/Astatistics/Controller/Stats.pm blib/lib/Astatistics/Controller/Stats.pm \
	  lib/Asterisk/Schema/Result/QueueLogProcessed.pm blib/lib/Asterisk/Schema/Result/QueueLogProcessed.pm \
	  lib/Astatistics/Schema/Result/Stat.pm blib/lib/Astatistics/Schema/Result/Stat.pm \
	  lib/Astatistics/Schema/Result/StatsToRole.pm blib/lib/Astatistics/Schema/Result/StatsToRole.pm \
	  lib/Astatistics/Schema/Result/StGroupsToRole.pm blib/lib/Astatistics/Schema/Result/StGroupsToRole.pm \
	  lib/Asterisk/Schema/Result/AgentStatus.pm blib/lib/Asterisk/Schema/Result/AgentStatus.pm \
	  lib/Astatistics/View/GP.pm blib/lib/Astatistics/View/GP.pm \
	  lib/Astatistics/Schema/Result/Role.pm blib/lib/Astatistics/Schema/Result/Role.pm \
	  lib/Asterisk/Schema/Result/CallStatus.pm blib/lib/Asterisk/Schema/Result/CallStatus.pm \
	  lib/Asterisk/Schema/Result/QueueLog.pm blib/lib/Asterisk/Schema/Result/QueueLog.pm \
	  lib/Asterisk/Schema/Result/Cdr.pm blib/lib/Asterisk/Schema/Result/Cdr.pm \
	  lib/Astatistics/Controller/Users.pm blib/lib/Astatistics/Controller/Users.pm \
	  lib/Astatistics/Model/QueueLogVirt.pm blib/lib/Astatistics/Model/QueueLogVirt.pm \
	  lib/Astatistics/Schema/Result/StGroupsToStGroup.pm blib/lib/Astatistics/Schema/Result/StGroupsToStGroup.pm \
	  lib/Astatistics/Schema/Result/StGroup.pm blib/lib/Astatistics/Schema/Result/StGroup.pm \
	  lib/Astatistics.pm blib/lib/Astatistics.pm 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
# Postamble by Module::Install 1.06
# --- Module::Install::Admin::Makefile section:

realclean purge ::
	$(RM_F) $(DISTVNAME).tar$(SUFFIX)
	$(RM_F) MANIFEST.bak _build
	$(PERL) "-Ilib" "-MModule::Install::Admin" -e "remove_meta()"
	$(RM_RF) inc

reset :: purge

upload :: test dist
	cpan-upload -verbose $(DISTVNAME).tar$(SUFFIX)

grok ::
	perldoc Module::Install

distsign ::
	cpansign -s

catalyst_par :: all
	$(NOECHO) $(PERL) -Ilib -Minc::Module::Install -MModule::Install::Catalyst -e"Catalyst::Module::Install::_catalyst_par( '', 'Astatistics', { CLASSES => [], PAROPTS =>  {}, ENGINE => 'CGI', SCRIPT => '', USAGE => q## } )"
# --- Module::Install::AutoInstall section:

config :: installdeps
	$(NOECHO) $(NOOP)

checkdeps ::
	$(PERL) Makefile.PL --checkdeps

installdeps ::
	$(NOECHO) $(NOOP)

installdeps_notest ::
	$(NOECHO) $(NOOP)

upgradedeps ::
	$(PERL) Makefile.PL --config= --upgradedeps=Test::More,0.88,DateTime,0,DateTime::Format::MySQL,0,Params::Validate,0.97,Class::CSV,0,Test::Output,0,Test::NoWarnings,0,Module::Runtime,0,Hash::MultiValue,0,namespace::autoclean,0.13,YAML::Tiny,0,DBD::SQLite,0,DateTime::Format::SQLite,0,SQL::Translator,0,Class::DBI,0,DBIx::Class,0,Object::Signature,0,File::Remove,0,Task::Catalyst,0,Catalyst::Runtime,5.80025,Catalyst::Plugin::ConfigLoader,0,Catalyst::Plugin::Static::Simple,0,Catalyst::Action::RenderView,0,Catalyst::ScriptRole,0,Catalyst::Script::Server,0,Catalyst::View::TT,0.39,CatalystX::Component::Traits,0.16,Catalyst::Devel,1.37,Catalyst::Plugin::Session::Store::FastMmap,0.16,Catalyst::Plugin::Session::State::Cookie,0.17,Catalyst::Plugin::Authorization::Roles,0.06,Catalyst::Authentication::Store::DBIx::Class,0.1503,Catalyst::View::Wkhtmltopdf,0,Catalyst::Helper::View::Wkhtmltopdf,0,Catalyst::Helper::View::JSON,0,Catalyst::ScriptRunner,0,Catalyst::Restarter,0,Moose,2.06020,Graphics::Color::RGB,0,Graphics::Primitive,0,Catalyst::Helper::View::Graphics::Primitive,0,Layout::Manager,0,Paper::Specs,0,DBIx::Class::ResultSet,0,DBIx::Class::Schema::Loader,0,Chart::Clicker,0,Config::General,0

upgradedeps_notest ::
	$(PERL) Makefile.PL --config=notest,1 --upgradedeps=Test::More,0.88,DateTime,0,DateTime::Format::MySQL,0,Params::Validate,0.97,Class::CSV,0,Test::Output,0,Test::NoWarnings,0,Module::Runtime,0,Hash::MultiValue,0,namespace::autoclean,0.13,YAML::Tiny,0,DBD::SQLite,0,DateTime::Format::SQLite,0,SQL::Translator,0,Class::DBI,0,DBIx::Class,0,Object::Signature,0,File::Remove,0,Task::Catalyst,0,Catalyst::Runtime,5.80025,Catalyst::Plugin::ConfigLoader,0,Catalyst::Plugin::Static::Simple,0,Catalyst::Action::RenderView,0,Catalyst::ScriptRole,0,Catalyst::Script::Server,0,Catalyst::View::TT,0.39,CatalystX::Component::Traits,0.16,Catalyst::Devel,1.37,Catalyst::Plugin::Session::Store::FastMmap,0.16,Catalyst::Plugin::Session::State::Cookie,0.17,Catalyst::Plugin::Authorization::Roles,0.06,Catalyst::Authentication::Store::DBIx::Class,0.1503,Catalyst::View::Wkhtmltopdf,0,Catalyst::Helper::View::Wkhtmltopdf,0,Catalyst::Helper::View::JSON,0,Catalyst::ScriptRunner,0,Catalyst::Restarter,0,Moose,2.06020,Graphics::Color::RGB,0,Graphics::Primitive,0,Catalyst::Helper::View::Graphics::Primitive,0,Layout::Manager,0,Paper::Specs,0,DBIx::Class::ResultSet,0,DBIx::Class::Schema::Loader,0,Chart::Clicker,0,Config::General,0

listdeps ::
	@$(PERL) -le "print for @ARGV" 

listalldeps ::
	@$(PERL) -le "print for @ARGV" Test::More DateTime DateTime::Format::MySQL Params::Validate Class::CSV Test::Output Test::NoWarnings Module::Runtime Hash::MultiValue namespace::autoclean YAML::Tiny DBD::SQLite DateTime::Format::SQLite SQL::Translator Class::DBI DBIx::Class Object::Signature File::Remove Task::Catalyst Catalyst::Runtime Catalyst::Plugin::ConfigLoader Catalyst::Plugin::Static::Simple Catalyst::Action::RenderView Catalyst::ScriptRole Catalyst::Script::Server Catalyst::View::TT CatalystX::Component::Traits Catalyst::Devel Catalyst::Plugin::Session::Store::FastMmap Catalyst::Plugin::Session::State::Cookie Catalyst::Plugin::Authorization::Roles Catalyst::Authentication::Store::DBIx::Class Catalyst::View::Wkhtmltopdf Catalyst::Helper::View::Wkhtmltopdf Catalyst::Helper::View::JSON Catalyst::ScriptRunner Catalyst::Restarter Moose Graphics::Color::RGB Graphics::Primitive Catalyst::Helper::View::Graphics::Primitive Layout::Manager Paper::Specs DBIx::Class::ResultSet DBIx::Class::Schema::Loader Chart::Clicker Config::General


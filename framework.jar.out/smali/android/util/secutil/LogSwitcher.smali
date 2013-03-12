.class public final Landroid/util/secutil/LogSwitcher;
.super Ljava/lang/Object;
.source "LogSwitcher.java"


# static fields
.field public static isShowingGlobalLog:Z

.field public static isShowingSecDLog:Z

.field public static isShowingSecELog:Z

.field public static isShowingSecILog:Z

.field public static isShowingSecVLog:Z

.field public static isShowingSecWLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    .line 9
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    .line 10
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    .line 11
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    .line 12
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    .line 13
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    .line 19
    :try_start_0
    const-string v0, "1"

    const-string/jumbo v1, "persist.log.seclevel"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    .line 23
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    .line 24
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    .line 25
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    .line 26
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    .line 27
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

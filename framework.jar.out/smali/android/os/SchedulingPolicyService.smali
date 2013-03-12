.class public Landroid/os/SchedulingPolicyService;
.super Landroid/os/ISchedulingPolicyService$Stub;
.source "SchedulingPolicyService.java"


# static fields
.field private static final PRIORITY_MAX:I = 0x2

.field private static final PRIORITY_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SchedulingPolicyService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/ISchedulingPolicyService$Stub;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public requestPriority(III)I
    .locals 5
    .parameter "pid"
    .parameter "tid"
    .parameter "prio"

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3f5

    if-ne v2, v3, :cond_0

    if-lt p3, v4, :cond_0

    const/4 v2, 0x2

    if-gt p3, v2, :cond_0

    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-ne v2, p1, :cond_2

    const/4 v2, 0x4

    :goto_1
    invoke-static {p2, v2}, Landroid/os/Process;->setThreadGroup(II)V

    .line 58
    const/4 v2, 0x1

    invoke-static {p2, v2, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v1, 0x0

    goto :goto_0

    .line 55
    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/RuntimeException;
    goto :goto_0
.end method

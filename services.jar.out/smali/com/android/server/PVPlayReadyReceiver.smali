.class public Lcom/android/server/PVPlayReadyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PVPlayReadyReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PVPlayReadyReceiver"

.field static final mStartingServiceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/PVPlayReadyReceiver;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    const-string v0, "PVPlayReadyReceiver"

    const-string v1, "PVPlayReadyReceiver : before start service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "start Service"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    const-string v0, "PVPlayReadyReceiver"

    const-string v1, "PVPlayReadyReceiver : after start service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 2
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 71
    const-string v0, "PVPlayReadyReceiver"

    const-string v1, "PVPlayReadyReceiver : finishStartingService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    return-void
.end method

.method protected onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 3
    .parameter "context"
    .parameter "intent"
    .parameter "privileged"

    .prologue
    .line 46
    const-string v0, "PVPlayReadyReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PVPlayReadyReceiver : onReceiveWithPrivilege intent.getType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-class v0, Lcom/android/server/PVPlayReadyService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    invoke-static {p1, p2}, Lcom/android/server/PVPlayReadyReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 49
    return-void
.end method

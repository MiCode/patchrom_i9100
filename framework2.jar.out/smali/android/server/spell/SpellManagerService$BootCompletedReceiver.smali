.class final Landroid/server/spell/SpellManagerService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SpellManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/spell/SpellManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/spell/SpellManagerService;


# direct methods
.method private constructor <init>(Landroid/server/spell/SpellManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Landroid/server/spell/SpellManagerService$BootCompletedReceiver;->this$0:Landroid/server/spell/SpellManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/spell/SpellManagerService;Landroid/server/spell/SpellManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/server/spell/SpellManagerService$BootCompletedReceiver;-><init>(Landroid/server/spell/SpellManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 92
    new-instance v0, Landroid/server/spell/SpellManagerService$BootCompletedReceiver$1;

    invoke-direct {v0, p0}, Landroid/server/spell/SpellManagerService$BootCompletedReceiver$1;-><init>(Landroid/server/spell/SpellManagerService$BootCompletedReceiver;)V

    invoke-virtual {v0}, Landroid/server/spell/SpellManagerService$BootCompletedReceiver$1;->start()V

    .line 100
    return-void
.end method

.class Lcom/android/server/enterprise/WifiPolicy$3$2;
.super Ljava/lang/Object;
.source "WifiPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/WifiPolicy$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/WifiPolicy$3;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/WifiPolicy$3;)V
    .locals 0
    .parameter

    .prologue
    .line 2705
    iput-object p1, p0, Lcom/android/server/enterprise/WifiPolicy$3$2;->this$1:Lcom/android/server/enterprise/WifiPolicy$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2707
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy$3$2;->this$1:Lcom/android/server/enterprise/WifiPolicy$3;

    iget-object v0, v0, Lcom/android/server/enterprise/WifiPolicy$3;->this$0:Lcom/android/server/enterprise/WifiPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy;->edmUpdateConfiguredNetworks()V

    .line 2708
    return-void
.end method

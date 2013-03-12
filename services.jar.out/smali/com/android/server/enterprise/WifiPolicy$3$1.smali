.class Lcom/android/server/enterprise/WifiPolicy$3$1;
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
    .line 2690
    iput-object p1, p0, Lcom/android/server/enterprise/WifiPolicy$3$1;->this$1:Lcom/android/server/enterprise/WifiPolicy$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2692
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->lock()Z

    .line 2693
    return-void
.end method

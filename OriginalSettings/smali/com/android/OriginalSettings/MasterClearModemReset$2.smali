.class Lcom/android/settings/MasterClearModemReset$2;
.super Ljava/lang/Object;
.source "MasterClearModemReset.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MasterClearModemReset;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClearModemReset;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearModemReset;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/MasterClearModemReset$2;->this$0:Lcom/android/settings/MasterClearModemReset;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "MasterClearModemReset"

    const-string v1, "MasterClearModemReset-Timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/settings/MasterClearModemReset$2;->this$0:Lcom/android/settings/MasterClearModemReset;

    #calls: Lcom/android/settings/MasterClearModemReset;->sendMasterClearIntent()V
    invoke-static {v0}, Lcom/android/settings/MasterClearModemReset;->access$000(Lcom/android/settings/MasterClearModemReset;)V

    .line 141
    return-void
.end method

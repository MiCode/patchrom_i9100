.class Lcom/android/sec_settings/wifi/WifiNewDialog$1;
.super Ljava/lang/Object;
.source "WifiNewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/WifiNewDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/WifiNewDialog;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/WifiNewDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog$1;->this$0:Lcom/android/sec_settings/wifi/WifiNewDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog$1;->this$0:Lcom/android/sec_settings/wifi/WifiNewDialog;

    #getter for: Lcom/android/sec_settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->access$000(Lcom/android/sec_settings/wifi/WifiNewDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog$1;->this$0:Lcom/android/sec_settings/wifi/WifiNewDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/sec_settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/sec_settings/wifi/WifiNewDialog;->access$002(Lcom/android/sec_settings/wifi/WifiNewDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 466
    :cond_0
    return-void
.end method

.class Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog$2;
.super Ljava/lang/Object;
.source "WifiApWhitelistDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;

    #calls: Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V
    invoke-static {v0}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->access$200(Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;)V

    .line 231
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 226
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 221
    return-void
.end method

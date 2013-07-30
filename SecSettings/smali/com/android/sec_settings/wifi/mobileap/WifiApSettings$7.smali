.class Lcom/android/sec_settings/wifi/mobileap/WifiApSettings$7;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSettings$7;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSettings$7;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x7

    #calls: Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;->access$1000(Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;I)V

    .line 638
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSettings$7;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z
    invoke-static {v0, v1}, Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;->access$502(Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;Z)Z

    .line 639
    const-string v0, "WifiApSettings"

    const-string v1, "selects Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSettings$7;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x1

    #calls: Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;->access$1100(Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;I)V

    .line 641
    return-void
.end method

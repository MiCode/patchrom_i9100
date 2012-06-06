.class Lcom/android/OriginalSettings/SettingsLicenseActivity$1;
.super Landroid/os/Handler;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/SettingsLicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/SettingsLicenseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity$1;->this$0:Lcom/android/OriginalSettings/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 153
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 154
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 155
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity$1;->this$0:Lcom/android/OriginalSettings/SettingsLicenseActivity;

    #calls: Lcom/android/OriginalSettings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/OriginalSettings/SettingsLicenseActivity;->access$000(Lcom/android/OriginalSettings/SettingsLicenseActivity;Ljava/lang/String;)V

    .line 159
    .end local v0           #text:Ljava/lang/String;
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity$1;->this$0:Lcom/android/OriginalSettings/SettingsLicenseActivity;

    #calls: Lcom/android/OriginalSettings/SettingsLicenseActivity;->showErrorAndFinish()V
    invoke-static {v1}, Lcom/android/OriginalSettings/SettingsLicenseActivity;->access$100(Lcom/android/OriginalSettings/SettingsLicenseActivity;)V

    goto :goto_0
.end method

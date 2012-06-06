.class Lcom/android/OriginalSettings/SettingsLicenseActivity$3;
.super Landroid/webkit/WebViewClient;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
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
    .line 204
    iput-object p1, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity$3;->this$0:Lcom/android/OriginalSettings/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity$3;->this$0:Lcom/android/OriginalSettings/SettingsLicenseActivity;

    #getter for: Lcom/android/OriginalSettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/SettingsLicenseActivity;->access$200(Lcom/android/OriginalSettings/SettingsLicenseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 208
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity$3;->this$0:Lcom/android/OriginalSettings/SettingsLicenseActivity;

    #getter for: Lcom/android/OriginalSettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/SettingsLicenseActivity;->access$300(Lcom/android/OriginalSettings/SettingsLicenseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 209
    return-void
.end method

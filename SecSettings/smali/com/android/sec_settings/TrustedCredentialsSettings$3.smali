.class Lcom/android/sec_settings/TrustedCredentialsSettings$3;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/sec_settings/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/TrustedCredentialsSettings;

.field final synthetic val$certDialog:Landroid/app/Dialog;

.field final synthetic val$certHolder:Lcom/android/sec_settings/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/TrustedCredentialsSettings;Lcom/android/sec_settings/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/sec_settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/sec_settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/sec_settings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/sec_settings/TrustedCredentialsSettings$CertHolder;

    iput-object p3, p0, Lcom/android/sec_settings/TrustedCredentialsSettings$3;->val$certDialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 357
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/sec_settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/sec_settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/sec_settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 358
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/sec_settings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/sec_settings/TrustedCredentialsSettings$CertHolder;

    #getter for: Lcom/android/sec_settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/sec_settings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/sec_settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/sec_settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/sec_settings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/sec_settings/TrustedCredentialsSettings$CertHolder;

    #calls: Lcom/android/sec_settings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/sec_settings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v2, v3}, Lcom/android/sec_settings/TrustedCredentialsSettings$Tab;->access$2800(Lcom/android/sec_settings/TrustedCredentialsSettings$Tab;Lcom/android/sec_settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 359
    const v2, 0x1040013

    new-instance v3, Lcom/android/sec_settings/TrustedCredentialsSettings$3$1;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/TrustedCredentialsSettings$3$1;-><init>(Lcom/android/sec_settings/TrustedCredentialsSettings$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    const v2, 0x1040009

    new-instance v3, Lcom/android/sec_settings/TrustedCredentialsSettings$3$2;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/TrustedCredentialsSettings$3$2;-><init>(Lcom/android/sec_settings/TrustedCredentialsSettings$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 374
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 375
    return-void
.end method

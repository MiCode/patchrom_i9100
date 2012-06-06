.class Lcom/android/OriginalSettings/TrustedCredentialsSettings$3;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/TrustedCredentialsSettings;

.field final synthetic val$certDialog:Landroid/app/Dialog;

.field final synthetic val$certHolder:Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/TrustedCredentialsSettings;Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$3;->this$0:Lcom/android/OriginalSettings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;

    iput-object p3, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$3;->val$certDialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 362
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$3;->this$0:Lcom/android/OriginalSettings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 363
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;

    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;

    #calls: Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->access$2900(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 364
    const v2, 0x1040013

    new-instance v3, Lcom/android/OriginalSettings/TrustedCredentialsSettings$3$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$3$1;-><init>(Lcom/android/OriginalSettings/TrustedCredentialsSettings$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    const v2, 0x1040009

    new-instance v3, Lcom/android/OriginalSettings/TrustedCredentialsSettings$3$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$3$2;-><init>(Lcom/android/OriginalSettings/TrustedCredentialsSettings$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 378
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 379
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 380
    return-void
.end method

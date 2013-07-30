.class Lcom/android/sec_settings/TrustedCredentialsSettings$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/sec_settings/TrustedCredentialsSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/sec_settings/TrustedCredentialsSettings$2;->this$0:Lcom/android/sec_settings/TrustedCredentialsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 343
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 344
    return-void
.end method

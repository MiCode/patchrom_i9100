.class Lcom/android/OriginalSettings/TrustedCredentialsSettings$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/TrustedCredentialsSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$2;->this$0:Lcom/android/OriginalSettings/TrustedCredentialsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 348
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 349
    return-void
.end method

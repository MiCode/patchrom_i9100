.class Lcom/android/sec_settings/TrustedCredentialsSettings$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/TrustedCredentialsSettings;->addTab(Lcom/android/sec_settings/TrustedCredentialsSettings$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/TrustedCredentialsSettings;

.field final synthetic val$adapter:Lcom/android/sec_settings/TrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/TrustedCredentialsSettings;Lcom/android/sec_settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/sec_settings/TrustedCredentialsSettings$1;->this$0:Lcom/android/sec_settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/sec_settings/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/sec_settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/sec_settings/TrustedCredentialsSettings$1;->this$0:Lcom/android/sec_settings/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/sec_settings/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/sec_settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1, p3}, Lcom/android/sec_settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/sec_settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    #calls: Lcom/android/sec_settings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/sec_settings/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/android/sec_settings/TrustedCredentialsSettings;->access$1000(Lcom/android/sec_settings/TrustedCredentialsSettings;Lcom/android/sec_settings/TrustedCredentialsSettings$CertHolder;)V

    .line 166
    return-void
.end method

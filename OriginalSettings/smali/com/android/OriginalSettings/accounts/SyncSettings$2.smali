.class Lcom/android/settings/accounts/SyncSettings$2;
.super Ljava/lang/Object;
.source "SyncSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/SyncSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/SyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/SyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings/accounts/SyncSettings$2;->this$0:Lcom/android/settings/accounts/SyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/android/settings/accounts/SyncSettings$2;->this$0:Lcom/android/settings/accounts/SyncSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/accounts/SyncSettings;->startActivity(Landroid/content/Intent;)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/accounts/SyncSettings$2;->this$0:Lcom/android/settings/accounts/SyncSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/SyncSettings;->finish()V

    .line 118
    return-void
.end method

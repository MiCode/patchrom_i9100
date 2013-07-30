.class Lcom/android/sec_settings/accounts/SyncSettings$3;
.super Ljava/lang/Object;
.source "SyncSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/accounts/SyncSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/accounts/SyncSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/accounts/SyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/sec_settings/accounts/SyncSettings$3;->this$0:Lcom/android/sec_settings/accounts/SyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/sec_settings/accounts/SyncSettings$3;->this$0:Lcom/android/sec_settings/accounts/SyncSettings;

    invoke-virtual {v0}, Lcom/android/sec_settings/accounts/SyncSettings;->finish()V

    .line 128
    return-void
.end method

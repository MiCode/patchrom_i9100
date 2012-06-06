.class Lcom/android/OriginalSettings/accounts/AccountSyncSettings$3;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$3;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$3;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    const/16 v1, 0x64

    #calls: Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->access$600(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;I)V

    .line 202
    return-void
.end method

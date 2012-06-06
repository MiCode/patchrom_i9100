.class Lcom/android/OriginalSettings/accounts/ManageAccountsSettings$1;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 148
    invoke-static {p2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 150
    return-void
.end method

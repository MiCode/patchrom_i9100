.class Lcom/android/settings/nearby/RejectListPreference$1;
.super Ljava/lang/Object;
.source "RejectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nearby/RejectListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/RejectListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/RejectListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/nearby/RejectListPreference$1;->this$0:Lcom/android/settings/nearby/RejectListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 63
    const-string v0, "AllshareSetting"

    const-string v1, "RejectListPreference: No List Items: OK"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

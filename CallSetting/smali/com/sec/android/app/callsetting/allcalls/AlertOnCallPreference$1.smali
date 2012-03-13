.class Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$1;
.super Ljava/lang/Object;
.source "AlertOnCallPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 83
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    invoke-virtual {v2}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "alertoncall_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, alertMode:I
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    invoke-virtual {v2}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 85
    .local v1, listView:Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 86
    const-string v2, "AlertOnCall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alertMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

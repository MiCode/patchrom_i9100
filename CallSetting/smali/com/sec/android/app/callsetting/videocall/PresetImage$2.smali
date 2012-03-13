.class Lcom/sec/android/app/callsetting/videocall/PresetImage$2;
.super Ljava/lang/Object;
.source "PresetImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/videocall/PresetImage;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/videocall/PresetImage;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$2;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 184
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$2;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/videocall/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$2;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/videocall/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    const-string v3, "PresetImage"

    const-string v4, " Change Preset Dialog is Showing."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$2;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    .line 192
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070038

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 194
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$2;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    invoke-virtual {v3}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preset_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, preset_Name:Ljava/lang/String;
    const-string v3, "photo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "video"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 200
    :cond_1
    const-string v3, "PresetImage"

    const-string v4, "current preset name != defaul image"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const v3, 0x7f050009

    new-instance v4, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$2;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    invoke-direct {v4, v5, v6}, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;-><init>(Lcom/sec/android/app/callsetting/videocall/PresetImage;Lcom/sec/android/app/callsetting/videocall/PresetImage$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 218
    const v3, 0x7f0700ae

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$2;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/callsetting/videocall/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 205
    :cond_2
    const-string v3, "PresetImage"

    const-string v4, "current preset name == defaul image"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const v3, 0x7f050008

    new-instance v4, Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$2;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    invoke-direct {v4, v5, v6}, Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;-><init>(Lcom/sec/android/app/callsetting/videocall/PresetImage;Lcom/sec/android/app/callsetting/videocall/PresetImage$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.class Lcom/android/OriginalSettings/ModePreview$1;
.super Ljava/lang/Object;
.source "ModePreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/ModePreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/ModePreview;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/ModePreview;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/OriginalSettings/ModePreview$1;->this$0:Lcom/android/OriginalSettings/ModePreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/OriginalSettings/ModePreview$1;->this$0:Lcom/android/OriginalSettings/ModePreview;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    iget-object v2, p0, Lcom/android/OriginalSettings/ModePreview$1;->this$0:Lcom/android/OriginalSettings/ModePreview;

    #getter for: Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/OriginalSettings/ModePreview;->access$000(Lcom/android/OriginalSettings/ModePreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 60
    iget-object v0, p0, Lcom/android/OriginalSettings/ModePreview$1;->this$0:Lcom/android/OriginalSettings/ModePreview;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ModePreview;->finish()V

    .line 61
    return-void
.end method

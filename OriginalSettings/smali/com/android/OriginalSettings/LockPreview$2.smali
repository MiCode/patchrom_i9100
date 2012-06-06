.class Lcom/android/OriginalSettings/LockPreview$2;
.super Ljava/lang/Object;
.source "LockPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/LockPreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/LockPreview;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/LockPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/OriginalSettings/LockPreview$2;->this$0:Lcom/android/OriginalSettings/LockPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/OriginalSettings/LockPreview$2;->this$0:Lcom/android/OriginalSettings/LockPreview;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/LockPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clock_position"

    iget-object v2, p0, Lcom/android/OriginalSettings/LockPreview$2;->this$0:Lcom/android/OriginalSettings/LockPreview;

    #getter for: Lcom/android/OriginalSettings/LockPreview;->position:I
    invoke-static {v2}, Lcom/android/OriginalSettings/LockPreview;->access$200(Lcom/android/OriginalSettings/LockPreview;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    iget-object v0, p0, Lcom/android/OriginalSettings/LockPreview$2;->this$0:Lcom/android/OriginalSettings/LockPreview;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/LockPreview;->finish()V

    .line 130
    return-void
.end method

.class Lcom/android/server/sec/ClippedDataPickerDialog$12;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;->IsSetProtectAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$12;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$12;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1039
    return-void
.end method

.class public final Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;
.super Ljava/lang/Object;
.source "KeyboardLayoutDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Keyboards"
.end annotation


# instance fields
.field public current:I

.field public final keyboardLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 346
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    return-void
.end method

.class public Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;
.super Landroid/widget/RelativeLayout;
.source "FileItemInfoLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final mLengthExternalStorageDirPrefix:I


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mFileNameView:Landroid/widget/TextView;

.field private mFileSizeView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;->mLengthExternalStorageDirPrefix:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 48
    const v0, 0x7f0801ad

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;->mFileNameView:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0801ae

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;->mFileSizeView:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0801ac

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;->mCheckbox:Landroid/widget/CheckBox;

    .line 51
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 77
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;->mFileNameView:Landroid/widget/TextView;

    sget v1, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;->mLengthExternalStorageDirPrefix:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public setFileSize(Ljava/lang/String;)V
    .locals 1
    .parameter "filesize"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;->mFileSizeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/FileItemInfoLayout;->setChecked(Z)V

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

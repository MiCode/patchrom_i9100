.class public Lcom/android/OriginalSettings/ModePreview;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "ModePreview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final mModeItem:[Ljava/lang/String;


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/OriginalSettings/ModePreview;->mModeItem:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/ModePreview;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 41
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v2, 0x7f04005c

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/ModePreview;->setContentView(I)V

    .line 45
    sget-object v2, Lcom/android/OriginalSettings/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0732

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 46
    sget-object v2, Lcom/android/OriginalSettings/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0733

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 47
    sget-object v2, Lcom/android/OriginalSettings/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0734

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 49
    const v2, 0x7f08010a

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;

    .line 50
    iget-object v2, p0, Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x109000f

    sget-object v5, Lcom/android/OriginalSettings/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    iget-object v2, p0, Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 52
    iget-object v2, p0, Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_mode_setting"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 53
    iget-object v2, p0, Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    iget-object v2, p0, Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 56
    const v2, 0x7f0800ea

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 57
    .local v1, ButtonOk:Landroid/widget/Button;
    new-instance v2, Lcom/android/OriginalSettings/ModePreview$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/ModePreview$1;-><init>(Lcom/android/OriginalSettings/ModePreview;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v2, 0x7f0800eb

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 65
    .local v0, ButtonCancel:Landroid/widget/Button;
    new-instance v2, Lcom/android/OriginalSettings/ModePreview$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/ModePreview$2;-><init>(Lcom/android/OriginalSettings/ModePreview;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    invoke-static {p3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PreviewMode"

    const-string v2, "could not persist mode setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 88
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PreviewMode"

    const-string v2, "could not change mode setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

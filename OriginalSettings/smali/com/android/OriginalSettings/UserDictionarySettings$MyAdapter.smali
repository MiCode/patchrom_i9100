.class Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/UserDictionarySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAdapter"
.end annotation


# instance fields
.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private mSettings:Lcom/android/OriginalSettings/UserDictionarySettings;

.field private mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/android/OriginalSettings/UserDictionarySettings;)V
    .locals 3
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"
    .parameter "settings"

    .prologue
    .line 333
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 318
    new-instance v2, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter$1;-><init>(Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    .line 335
    iput-object p6, p0, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;->mSettings:Lcom/android/OriginalSettings/UserDictionarySettings;

    .line 336
    if-eqz p3, :cond_0

    .line 337
    const v2, 0x10404d5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, alphabet:Ljava/lang/String;
    const-string v2, "word"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 340
    .local v1, wordColIndex:I
    new-instance v2, Landroid/widget/AlphabetIndexer;

    invoke-direct {v2, p3, v1, v0}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 342
    .end local v0           #alphabet:Ljava/lang/String;
    .end local v1           #wordColIndex:I
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 343
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;->mSettings:Lcom/android/OriginalSettings/UserDictionarySettings;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/OriginalSettings/UserDictionarySettings;->deleteWord(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/OriginalSettings/UserDictionarySettings;->access$200(Lcom/android/OriginalSettings/UserDictionarySettings;Ljava/lang/String;)V

    .line 359
    return-void
.end method

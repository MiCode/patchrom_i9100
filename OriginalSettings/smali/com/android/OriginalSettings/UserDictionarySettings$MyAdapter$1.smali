.class Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter$1;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter$1;->this$0:Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 2
    .parameter "v"
    .parameter "c"
    .parameter "columnIndex"

    .prologue
    const/4 v0, 0x1

    .line 321
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter$1;->this$0:Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 327
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

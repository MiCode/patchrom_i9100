.class Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeSubtypeListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final mImeName:Ljava/lang/CharSequence;

.field public final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mIsSystemLanguage:Z

.field private final mIsSystemLocale:Z

.field public final mSubtypeId:I

.field public final mSubtypeName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "imeName"
    .parameter "subtypeName"
    .parameter "imi"
    .parameter "subtypeId"
    .parameter "subtypeLocale"
    .parameter "systemLocale"

    .prologue
    const/4 v0, 0x0

    .line 2947
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2948
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 2949
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 2950
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 2951
    iput p4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeId:I

    .line 2952
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2953
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLocale:Z

    .line 2954
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLanguage:Z

    .line 2960
    :goto_0
    return-void

    .line 2956
    :cond_0
    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLocale:Z

    .line 2957
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLocale:Z

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLanguage:Z

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;)I
    .locals 4
    .parameter "other"

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 2964
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2994
    :cond_0
    :goto_0
    return v0

    .line 2967
    :cond_1
    iget-object v2, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2968
    goto :goto_0

    .line 2970
    :cond_2
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2971
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2973
    :cond_3
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2974
    const/4 v0, 0x0

    goto :goto_0

    .line 2976
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLocale:Z

    if-eqz v2, :cond_5

    move v0, v1

    .line 2977
    goto :goto_0

    .line 2979
    :cond_5
    iget-boolean v2, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLocale:Z

    if-nez v2, :cond_0

    .line 2982
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLanguage:Z

    if-eqz v2, :cond_6

    move v0, v1

    .line 2983
    goto :goto_0

    .line 2985
    :cond_6
    iget-boolean v2, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLanguage:Z

    if-nez v2, :cond_0

    .line 2988
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2991
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 2992
    goto :goto_0

    .line 2994
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2938
    check-cast p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->compareTo(Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;)I

    move-result v0

    return v0
.end method

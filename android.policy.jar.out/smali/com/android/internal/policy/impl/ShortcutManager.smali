.class Lcom/android/internal/policy/impl/ShortcutManager;
.super Landroid/database/ContentObserver;
.source "ShortcutManager.java"


# static fields
.field private static final COLUMN_INTENT:I = 0x1

.field private static final COLUMN_SHORTCUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShortcutManager"

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mShortcutIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "intent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/ShortcutManager;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 53
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 55
    iput-object p1, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mShortcutIntents:Landroid/util/SparseArray;

    .line 57
    return-void
.end method

.method private updateShortcuts()V
    .locals 7

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mCursor:Landroid/database/Cursor;

    .line 74
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v5

    if-nez v5, :cond_1

    .line 75
    const-string v5, "ShortcutManager"

    const-string v6, "ShortcutObserver could not re-query shortcuts."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void

    .line 79
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mShortcutIntents:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 80
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 82
    .local v4, shortcut:I
    if-eqz v4, :cond_2

    .line 83
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, intentURI:Ljava/lang/String;
    const/4 v2, 0x0

    .line 86
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    invoke-static {v3}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 90
    :goto_1
    if-eqz v2, :cond_2

    .line 91
    iget-object v5, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mShortcutIntents:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Ljava/net/URISyntaxException;
    const-string v5, "ShortcutManager"

    const-string v6, "Intent URI for shortcut invalid."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;
    .locals 3
    .parameter "kcm"
    .parameter "keyCode"
    .parameter "metaState"

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 114
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v1

    .line 115
    .local v1, shortcut:I
    if-eqz v1, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mShortcutIntents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #intent:Landroid/content/Intent;
    check-cast v0, Landroid/content/Intent;

    .line 120
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 122
    if-eqz v1, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mShortcutIntents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #intent:Landroid/content/Intent;
    check-cast v0, Landroid/content/Intent;

    .line 127
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    return-object v0
.end method

.method public observe()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/ShortcutManager;->sProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mCursor:Landroid/database/Cursor;

    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 64
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ShortcutManager;->updateShortcuts()V

    .line 65
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ShortcutManager;->updateShortcuts()V

    .line 70
    return-void
.end method

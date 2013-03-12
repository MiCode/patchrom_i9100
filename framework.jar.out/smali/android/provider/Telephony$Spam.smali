.class public final Landroid/provider/Telephony$Spam;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Spam"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CRITERIA_ENDWITH:I = 0x2

.field public static final CRITERIA_EXACTLYSAME:I = 0x0

.field public static final CRITERIA_INCLUDE:I = 0x3

.field public static final CRITERIA_STARTWITH:I = 0x1

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final FILTER_TYPE_NUMBER:I = 0x1

.field public static final FILTER_TYPE_STRING:I = 0x0

.field public static final SPAM_CRITERIA:Ljava/lang/String; = "Criteria"

.field public static final SPAM_ENABLE:Ljava/lang/String; = "Enable"

.field public static final SPAM_FILTER:Ljava/lang/String; = "Filter"

.field public static final SPAM_FILTER_TYPE:Ljava/lang/String; = "FilterType"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2636
    const-string v0, "content://spamsms/spam"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Spam;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSpamMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;ZLjava/lang/String;I)Landroid/net/Uri;
    .locals 3
    .parameter "resolver"
    .parameter "uri"
    .parameter "filterType"
    .parameter "filterValue"
    .parameter "criteria"

    .prologue
    .line 2669
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2670
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "FilterType"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2671
    const-string v1, "Filter"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    const-string v1, "Criteria"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2674
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 2670
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 2659
    sget-object v1, Landroid/provider/Telephony$Spam;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 2664
    sget-object v1, Landroid/provider/Telephony$Spam;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const-string v5, "date DESC"

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p3

    goto :goto_0
.end method

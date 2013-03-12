.class public final Lcom/google/android/mms/SecurityTelephony$Sms$Outbox;
.super Ljava/lang/Object;
.source "SecurityTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/mms/SecurityTelephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/SecurityTelephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Outbox"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 516
    const-string v0, "content://security_sms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/SecurityTelephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 512
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;
    .locals 10
    .parameter "resolver"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "deliveryReport"
    .parameter "threadId"

    .prologue
    .line 538
    sget-object v1, Lcom/google/android/mms/SecurityTelephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-static/range {v0 .. v9}, Lcom/google/android/mms/SecurityTelephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

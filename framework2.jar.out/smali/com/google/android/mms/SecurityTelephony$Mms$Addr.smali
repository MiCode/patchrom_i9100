.class public final Lcom/google/android/mms/SecurityTelephony$Mms$Addr;
.super Ljava/lang/Object;
.source "SecurityTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/SecurityTelephony$Mms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Addr"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final CHARSET:Ljava/lang/String; = "charset"

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1768
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

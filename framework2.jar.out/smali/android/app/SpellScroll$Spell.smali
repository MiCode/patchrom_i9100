.class public Landroid/app/SpellScroll$Spell;
.super Landroid/app/ExtraAttr$Owner;
.source "SpellScroll.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SpellScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spell"
.end annotation


# static fields
.field public static final CAST_ACTION_ACTIVITY:I = 0x0

.field public static final CAST_ACTION_BROADCAST:I = 0x2

.field public static final CAST_ACTION_SERVICE:I = 0x1

.field public static final EXTRA_ATTR_KEY_CAST_ACTION:Ljava/lang/String; = "castAction"

.field public static final EXTRA_ATTR_KEY_MATCH_PATTERN:Ljava/lang/String; = "matchPattern"

.field private static final PSEUDO_SPELL_NAME:Ljava/lang/String; = "launch"

.field private static sCastActionTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDefaultCastAction:I

.field private mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$SpellEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mHintId:I

.field private final mIconId:I

.field private final mId:J

.field private mIngredients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$Ingredient;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsPseudo:Z

.field private final mLabelId:I

.field private final mLocalHash:I

.field private final mName:Ljava/lang/String;

.field private final mNonLocalizedLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x0

    sput-object v0, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 6
    .parameter "packageContext"
    .parameter "info"
    .parameter "spellScrollName"

    .prologue
    .line 1003
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 952
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    .line 953
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    .line 1005
    iget v2, p2, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 1006
    .local v2, labelId:I
    iget v1, p2, Landroid/content/pm/ActivityInfo;->icon:I

    .line 1008
    .local v1, iconId:I
    iget-object v0, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1010
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 1011
    if-nez v2, :cond_0

    .line 1012
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 1014
    :cond_0
    if-nez v1, :cond_1

    .line 1015
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 1019
    :cond_1
    const-string v4, "launch"

    iput-object v4, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    .line 1020
    iput v2, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    .line 1021
    iput v1, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    .line 1022
    iput v2, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    .line 1023
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-direct {p0, p3, v4}, Landroid/app/SpellScroll$Spell;->calculateId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/SpellScroll$Spell;->mId:J

    .line 1024
    const/4 v4, 0x0

    iput v4, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    .line 1025
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    .line 1027
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1030
    .local v3, nonLocalizedLabel:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 1031
    :cond_2
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1035
    :cond_3
    :goto_1
    iput-object v3, p0, Landroid/app/SpellScroll$Spell;->mNonLocalizedLabel:Ljava/lang/String;

    .line 1037
    invoke-direct {p0}, Landroid/app/SpellScroll$Spell;->calculateLocalHash()I

    move-result v4

    iput v4, p0, Landroid/app/SpellScroll$Spell;->mLocalHash:I

    .line 1038
    return-void

    .line 1027
    .end local v3           #nonLocalizedLabel:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 1031
    .restart local v3       #nonLocalizedLabel:Ljava/lang/String;
    :cond_5
    const-string v3, ""

    goto :goto_1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;I)V
    .locals 4
    .parameter "packageContext"
    .parameter "attr"
    .parameter "spellScrollName"
    .parameter "castAction"

    .prologue
    const/4 v3, 0x0

    .line 963
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 952
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    .line 953
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    .line 964
    sget-object v1, Lcom/android/internal/R$styleable;->Spell:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 967
    .local v0, ta:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    .line 968
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    .line 969
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    .line 970
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    .line 972
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 974
    iget-object v1, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 975
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name may not be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 978
    :cond_1
    iget-object v1, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-direct {p0, p3, v1}, Landroid/app/SpellScroll$Spell;->calculateId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/SpellScroll$Spell;->mId:J

    .line 979
    iput p4, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    .line 981
    iget v1, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    if-nez v1, :cond_2

    .line 982
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Spell label must be a resource reference."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 985
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mNonLocalizedLabel:Ljava/lang/String;

    .line 986
    iput-boolean v3, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    .line 988
    invoke-direct {p0}, Landroid/app/SpellScroll$Spell;->calculateLocalHash()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mLocalHash:I

    .line 989
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 1049
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 952
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    .line 953
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    .line 1050
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/SpellScroll$Spell;->mId:J

    .line 1051
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    .line 1052
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    .line 1053
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    .line 1054
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    .line 1055
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    .line 1057
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-lez v0, :cond_0

    .line 1058
    new-instance v1, Landroid/app/SpellScroll$SpellEffect;

    invoke-direct {v1, p1}, Landroid/app/SpellScroll$SpellEffect;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p0, v1}, Landroid/app/SpellScroll$Spell;->addEffect(Landroid/app/SpellScroll$SpellEffect;)V

    .line 1057
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1061
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :goto_1
    if-lez v0, :cond_1

    .line 1062
    new-instance v1, Landroid/app/SpellScroll$Ingredient;

    invoke-direct {v1, p1}, Landroid/app/SpellScroll$Ingredient;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p0, v1}, Landroid/app/SpellScroll$Spell;->addIngredient(Landroid/app/SpellScroll$Ingredient;)V

    .line 1061
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1065
    :cond_1
    iget-object v1, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 1066
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    .line 1067
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mNonLocalizedLabel:Ljava/lang/String;

    .line 1069
    invoke-direct {p0}, Landroid/app/SpellScroll$Spell;->calculateLocalHash()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mLocalHash:I

    .line 1070
    return-void

    .line 1066
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private calculateId(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .parameter "spellScrollName"
    .parameter "spellName"

    .prologue
    .line 1103
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1104
    .local v0, idHpart:I
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1105
    .local v1, idLpart:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 1107
    .local v2, idWpart:I
    int-to-long v3, v0

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    int-to-long v5, v1

    or-long/2addr v3, v5

    int-to-long v5, v2

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    xor-long/2addr v3, v5

    return-wide v3
.end method

.method private calculateLocalHash()I
    .locals 2

    .prologue
    .line 1085
    iget v0, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    .line 1086
    .local v0, result:I
    iget v1, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    xor-int/2addr v0, v1

    .line 1087
    iget v1, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    xor-int/2addr v0, v1

    .line 1088
    iget v1, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    xor-int/2addr v0, v1

    .line 1089
    iget-boolean v1, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    shl-int v1, v0, v1

    xor-int/2addr v0, v1

    .line 1091
    iget-object v1, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1092
    iget-object v1, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1095
    :cond_0
    return v0

    .line 1089
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized convertCastAction(Ljava/lang/String;)I
    .locals 5
    .parameter "castAction"

    .prologue
    .line 1235
    const-class v2, Landroid/app/SpellScroll$Spell;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1237
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    .line 1239
    sget-object v1, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    const-string v3, "startActivity"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    sget-object v1, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    const-string v3, "startService"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    sget-object v1, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    const-string v3, "sendBroadcast"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1246
    .local v0, trimmedCastAction:Ljava/lang/String;
    sget-object v1, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1247
    sget-object v1, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1250
    :goto_0
    monitor-exit v2

    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 1235
    .end local v0           #trimmedCastAction:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addEffect(Landroid/app/SpellScroll$SpellEffect;)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 1152
    iget-object v0, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    return-void
.end method

.method public addIngredient(Landroid/app/SpellScroll$Ingredient;)V
    .locals 1
    .parameter "ingre"

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    return-void
.end method

.method public cast(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 8
    .parameter "context"
    .parameter "userInput"

    .prologue
    .line 1177
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/app/SpellScroll$Spell;->compile(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v3

    .line 1179
    .local v3, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1180
    :cond_0
    const/4 v4, 0x0

    .line 1204
    .end local v3           #intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :goto_0
    return v4

    .line 1183
    .restart local v3       #intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1184
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/SpellScroll$Spell;->getCastAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1195
    const-string v4, "SpellScroll"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown cast action was given. ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/SpellScroll$Spell;->getCastAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1199
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :catch_0
    move-exception v0

    .line 1200
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SpellScroll"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Casting a spell failed. ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/SpellScroll$Spell;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1204
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 1186
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :pswitch_0
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1189
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 1192
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public compile(Landroid/os/Bundle;)Ljava/util/List;
    .locals 6
    .parameter "userInput"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1209
    iget-object v3, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1210
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No spell effect information in this spell["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1213
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1215
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v3, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SpellScroll$SpellEffect;

    .line 1216
    .local v0, effect:Landroid/app/SpellScroll$SpellEffect;
    iget-object v3, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-virtual {v0, v3, p1}, Landroid/app/SpellScroll$SpellEffect;->compile(Ljava/util/List;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1219
    .end local v0           #effect:Landroid/app/SpellScroll$SpellEffect;
    :cond_2
    return-object v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1112
    const/4 v0, 0x0

    return v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 7
    .parameter "pw"

    .prologue
    .line 1366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/app/SpellScroll$Spell;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hashCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/SpellScroll$Spell;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLabelId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mNonLocalizedLabel=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/SpellScroll$Spell;->mNonLocalizedLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mIconId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsPseudo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mHintId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mDefaultCastAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mEffects.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p0}, Landroid/app/SpellScroll$Spell;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mExtraAttrs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/SpellScroll$Spell;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1380
    :cond_0
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll$Ingredient;

    .line 1381
    .local v2, ingre:Landroid/app/SpellScroll$Ingredient;
    invoke-virtual {v2, p1}, Landroid/app/SpellScroll$Ingredient;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1384
    .end local v2           #ingre:Landroid/app/SpellScroll$Ingredient;
    :cond_1
    const/4 v3, 0x1

    .line 1385
    .local v3, j:I
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SpellScroll$SpellEffect;

    .line 1386
    .local v0, effect:Landroid/app/SpellScroll$SpellEffect;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      Effect #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v0, p1}, Landroid/app/SpellScroll$SpellEffect;->dump(Ljava/io/PrintWriter;)V

    .line 1388
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1390
    .end local v0           #effect:Landroid/app/SpellScroll$SpellEffect;
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "otherObj"

    .prologue
    const/4 v3, 0x0

    .line 1297
    instance-of v2, p1, Landroid/app/SpellScroll$Spell;

    if-nez v2, :cond_0

    move v2, v3

    .line 1338
    :goto_0
    return v2

    :cond_0
    move-object v1, p1

    .line 1301
    check-cast v1, Landroid/app/SpellScroll$Spell;

    .line 1303
    .local v1, other:Landroid/app/SpellScroll$Spell;
    iget-wide v4, p0, Landroid/app/SpellScroll$Spell;->mId:J

    iget-wide v6, v1, Landroid/app/SpellScroll$Spell;->mId:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    iget v2, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    iget v4, v1, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    iget v4, v1, Landroid/app/SpellScroll$Spell;->mLabelId:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    iget v4, v1, Landroid/app/SpellScroll$Spell;->mIconId:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    iget v4, v1, Landroid/app/SpellScroll$Spell;->mHintId:I

    if-ne v2, v4, :cond_1

    iget-boolean v2, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    iget-boolean v4, v1, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    if-eq v2, v4, :cond_2

    :cond_1
    move v2, v3

    .line 1309
    goto :goto_0

    .line 1312
    :cond_2
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_3
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move v2, v3

    .line 1315
    goto :goto_0

    .line 1318
    :cond_6
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, v1, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_7

    move v2, v3

    .line 1319
    goto :goto_0

    .line 1322
    :cond_7
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, v1, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_8

    move v2, v3

    .line 1323
    goto :goto_0

    .line 1326
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 1327
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll$SpellEffect;

    iget-object v4, v1, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/SpellScroll$SpellEffect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    .line 1328
    goto/16 :goto_0

    .line 1326
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1332
    :cond_a
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 1333
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll$Ingredient;

    iget-object v4, v1, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/SpellScroll$Ingredient;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v3

    .line 1334
    goto/16 :goto_0

    .line 1332
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1338
    :cond_c
    invoke-super {p0, p1}, Landroid/app/ExtraAttr$Owner;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public getCastAction()I
    .locals 4

    .prologue
    .line 1254
    iget-object v2, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    const-string v3, "castAction"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1255
    .local v0, castAction:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/app/SpellScroll$Spell;->convertCastAction(Ljava/lang/String;)I

    move-result v1

    .line 1257
    .local v1, result:I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .end local v1           #result:I
    :goto_1
    return v1

    .line 1255
    :cond_0
    iget v1, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    goto :goto_0

    .line 1257
    .restart local v1       #result:I
    :cond_1
    iget v1, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    goto :goto_1
.end method

.method public getEffects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$SpellEffect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1160
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getHintId()I
    .locals 1

    .prologue
    .line 1273
    iget v0, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 1269
    iget v0, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1230
    iget-wide v0, p0, Landroid/app/SpellScroll$Spell;->mId:J

    return-wide v0
.end method

.method public getIngredients()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getLabelId()I
    .locals 1

    .prologue
    .line 1265
    iget v0, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    return v0
.end method

.method public getMatchPattern()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1342
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    const-string v1, "matchPattern"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNonLocalizedLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Landroid/app/SpellScroll$Spell;->mNonLocalizedLabel:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 1282
    iget v4, p0, Landroid/app/SpellScroll$Spell;->mLocalHash:I

    invoke-super {p0}, Landroid/app/ExtraAttr$Owner;->hashCode()I

    move-result v5

    xor-int v3, v4, v5

    .line 1284
    .local v3, result:I
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll$Ingredient;

    .line 1285
    .local v2, ingre:Landroid/app/SpellScroll$Ingredient;
    invoke-virtual {v2}, Landroid/app/SpellScroll$Ingredient;->hashCode()I

    move-result v4

    xor-int/2addr v3, v4

    goto :goto_0

    .line 1288
    .end local v2           #ingre:Landroid/app/SpellScroll$Ingredient;
    :cond_0
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SpellScroll$SpellEffect;

    .line 1289
    .local v0, effect:Landroid/app/SpellScroll$SpellEffect;
    invoke-virtual {v0}, Landroid/app/SpellScroll$SpellEffect;->hashCode()I

    move-result v4

    xor-int/2addr v3, v4

    goto :goto_1

    .line 1292
    .end local v0           #effect:Landroid/app/SpellScroll$SpellEffect;
    :cond_1
    return v3
.end method

.method public isPseudo()Z
    .locals 1

    .prologue
    .line 1277
    iget-boolean v0, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 8
    .parameter "text"

    .prologue
    const/4 v4, 0x0

    .line 1346
    invoke-virtual {p0}, Landroid/app/SpellScroll$Spell;->getMatchPattern()Ljava/lang/String;

    move-result-object v1

    .line 1348
    .local v1, matchPattern:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return v4

    .line 1353
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1355
    .local v3, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1357
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 1358
    .end local v2           #matcher:Ljava/util/regex/Matcher;
    .end local v3           #pattern:Ljava/util/regex/Pattern;
    :catch_0
    move-exception v0

    .line 1359
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SpellScroll"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Match failed in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 1117
    iget-wide v4, p0, Landroid/app/SpellScroll$Spell;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1118
    iget v4, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1120
    iget v4, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    iget v4, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    iget v4, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    if-nez v4, :cond_3

    .line 1126
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    :cond_0
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    if-nez v4, :cond_4

    .line 1137
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    :cond_1
    iget-object v4, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1147
    iget-boolean v4, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    iget-object v3, p0, Landroid/app/SpellScroll$Spell;->mNonLocalizedLabel:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1149
    return-void

    .line 1128
    :cond_3
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1129
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SpellScroll$SpellEffect;

    .line 1132
    .local v0, effect:Landroid/app/SpellScroll$SpellEffect;
    invoke-virtual {v0, p1, p2}, Landroid/app/SpellScroll$SpellEffect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1139
    .end local v0           #effect:Landroid/app/SpellScroll$SpellEffect;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1141
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll$Ingredient;

    .line 1142
    .local v2, ingre:Landroid/app/SpellScroll$Ingredient;
    invoke-virtual {v2, p1, p2}, Landroid/app/SpellScroll$Ingredient;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1
.end method

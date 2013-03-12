.class public Landroid/app/SpellManager;
.super Ljava/lang/Object;
.source "SpellManager.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final INTENT_ACTION_SPELLSCROLL_CHANGED:Ljava/lang/String; = "android.spell.action.SPELLSCROLL_CHANGED"

.field private static final TAG:Ljava/lang/String; = "SpellManager"

.field private static mService:Landroid/app/ISpellManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/app/SpellManager;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Landroid/app/SpellManager;->mHandler:Landroid/os/Handler;

    .line 76
    const-string v0, "spell"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ISpellManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISpellManager;

    move-result-object v0

    sput-object v0, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    .line 78
    return-void
.end method


# virtual methods
.method public cast(JLandroid/os/Bundle;)Z
    .locals 6
    .parameter "spellId"
    .parameter "userInput"

    .prologue
    const/4 v2, 0x0

    .line 314
    :try_start_0
    sget-object v3, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v3, p1, p2}, Landroid/app/ISpellManager;->getSpellById(J)Landroid/app/SpellScroll;

    move-result-object v1

    .line 316
    .local v1, info:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getSpell()Landroid/app/SpellScroll$Spell;

    move-result-object v3

    if-nez v3, :cond_1

    .line 325
    .end local v1           #info:Landroid/app/SpellScroll;
    :cond_0
    :goto_0
    return v2

    .line 320
    .restart local v1       #info:Landroid/app/SpellScroll;
    :cond_1
    invoke-virtual {v1}, Landroid/app/SpellScroll;->getSpell()Landroid/app/SpellScroll$Spell;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SpellManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p3}, Landroid/app/SpellScroll$Spell;->cast(Landroid/content/Context;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 321
    .end local v1           #info:Landroid/app/SpellScroll;
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SpellManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cast() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "spellScrollName"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 177
    if-nez p2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-object v8

    .line 182
    :cond_1
    :try_start_0
    sget-object v7, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v7, p1}, Landroid/app/ISpellManager;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v5

    .line 184
    .local v5, info:Landroid/app/SpellScroll;
    if-eqz v5, :cond_0

    .line 185
    iget-object v7, p0, Landroid/app/SpellManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/app/SpellScroll;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    .line 187
    .local v6, packageContext:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/app/SpellScroll;->getIconId()I

    move-result v7

    if-ne v7, p2, :cond_3

    .line 190
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 192
    .local v3, cscAppIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    .line 193
    instance-of v7, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_2

    .line 194
    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 196
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    move-object v8, v1

    .line 197
    goto :goto_0

    .line 201
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 202
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 203
    .local v2, canvas:Landroid/graphics/Canvas;
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    invoke-virtual {v3, v7, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 204
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v8, v1

    .line 206
    goto :goto_0

    .line 210
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #cscAppIcon:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_1
    move-object v8, v7

    goto :goto_0

    :cond_4
    move-object v7, v8

    goto :goto_1

    .line 213
    .end local v5           #info:Landroid/app/SpellScroll;
    .end local v6           #packageContext:Landroid/content/Context;
    :catch_0
    move-exception v4

    .line 214
    .local v4, e:Landroid/os/RemoteException;
    const-string v7, "SpellManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBitmap() failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getInformationHash()I
    .locals 4

    .prologue
    .line 330
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1}, Landroid/app/ISpellManager;->getInformationHash()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 335
    :goto_0
    return v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInformationHash() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstantSpell(Ljava/lang/String;)J
    .locals 7
    .parameter "spellText"

    .prologue
    const-wide/16 v2, 0x0

    .line 282
    :try_start_0
    sget-object v4, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v4, p1}, Landroid/app/ISpellManager;->getInstantSpell(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    .line 284
    .local v1, info:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getSpell()Landroid/app/SpellScroll$Spell;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/SpellScroll$Spell;->getId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 289
    .end local v1           #info:Landroid/app/SpellScroll;
    :cond_0
    :goto_0
    return-wide v2

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SpellManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInstantSpell() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getShallowSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 4
    .parameter "spellScrollName"

    .prologue
    .line 113
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1}, Landroid/app/ISpellManager;->getShallowSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 118
    :goto_0
    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShallowSpellScroll() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpell(J)Landroid/app/SpellScroll$Spell;
    .locals 6
    .parameter "spellId"

    .prologue
    const/4 v2, 0x0

    .line 255
    :try_start_0
    sget-object v3, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v3, p1, p2}, Landroid/app/ISpellManager;->getSpellById(J)Landroid/app/SpellScroll;

    move-result-object v1

    .line 257
    .local v1, info:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getSpell()Landroid/app/SpellScroll$Spell;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 262
    .end local v1           #info:Landroid/app/SpellScroll;
    :cond_0
    :goto_0
    return-object v2

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SpellManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpell() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSpell(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SpellScroll$Spell;
    .locals 6
    .parameter "spellScrollName"
    .parameter "spellName"

    .prologue
    const/4 v2, 0x0

    .line 268
    :try_start_0
    sget-object v3, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v3, p1, p2}, Landroid/app/ISpellManager;->getSpellMatchOnly(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    .line 270
    .local v1, info:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/app/SpellScroll;->getSpell(Ljava/lang/String;)Landroid/app/SpellScroll$Spell;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 275
    .end local v1           #info:Landroid/app/SpellScroll;
    :cond_0
    :goto_0
    return-object v2

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SpellManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpell() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSpellName(J)Ljava/lang/String;
    .locals 4
    .parameter "spellId"

    .prologue
    .line 304
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1, p2}, Landroid/app/ISpellManager;->getSpellNameById(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 309
    :goto_0
    return-object v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellName() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellNames(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "spellScrollName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1}, Landroid/app/ISpellManager;->getSpellNames(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellNames() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 4
    .parameter "spellScrollName"

    .prologue
    .line 123
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1}, Landroid/app/ISpellManager;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 128
    :goto_0
    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellScroll() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScrollName(J)Ljava/lang/String;
    .locals 4
    .parameter "spellId"

    .prologue
    .line 294
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1, p2}, Landroid/app/ISpellManager;->getSpellScrollNameById(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 299
    :goto_0
    return-object v1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellScrollName() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScrollNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1}, Landroid/app/ISpellManager;->getSpellScrollNames()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 98
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellScrolls() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScrollNamesByPriority(I)Ljava/util/List;
    .locals 4
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1}, Landroid/app/ISpellManager;->getSpellScrollNamesByPriority(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellScrollNamesByPriority() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpells(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "spellScrollName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$Spell;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 133
    :try_start_0
    sget-object v3, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v3, p1}, Landroid/app/ISpellManager;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    .line 135
    .local v1, scroll:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getSpells()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 140
    .end local v1           #scroll:Landroid/app/SpellScroll;
    :cond_0
    :goto_0
    return-object v2

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SpellManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getShallowSpellScroll() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .parameter "spellScrollName"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 221
    if-nez p2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-object v4

    .line 226
    :cond_1
    :try_start_0
    sget-object v5, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v5, p1}, Landroid/app/ISpellManager;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v2

    .line 228
    .local v2, info:Landroid/app/SpellScroll;
    if-eqz v2, :cond_0

    .line 229
    iget-object v5, p0, Landroid/app/SpellManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/app/SpellScroll;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    .line 231
    .local v3, packageContext:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/app/SpellScroll;->getLabelId()I

    move-result v5

    if-ne v5, p2, :cond_2

    .line 235
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 237
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 242
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 245
    .end local v2           #info:Landroid/app/SpellScroll;
    .end local v3           #packageContext:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 246
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "SpellManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getString() failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isValidSpell(J)Z
    .locals 7
    .parameter "spellId"

    .prologue
    const/4 v3, 0x0

    .line 145
    :try_start_0
    sget-object v4, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v4, p1, p2}, Landroid/app/ISpellManager;->getSpellScrollNameById(J)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, spellScrollName:Ljava/lang/String;
    sget-object v4, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v4, p1, p2}, Landroid/app/ISpellManager;->getSpellNameById(J)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, spellName:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/app/SpellManager;->isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 153
    .end local v1           #spellName:Ljava/lang/String;
    .end local v2           #spellScrollName:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SpellManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isValidSpell() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "spellScrollName"
    .parameter "spellName"

    .prologue
    .line 158
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1, p2}, Landroid/app/ISpellManager;->isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 163
    :goto_0
    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidSpell() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValidSpellScroll(Ljava/lang/String;)Z
    .locals 4
    .parameter "spellScrollName"

    .prologue
    .line 83
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1}, Landroid/app/ISpellManager;->isValidSpellScroll(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 88
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellScrolls() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x0

    goto :goto_0
.end method

.class public Ldev/virus/variable/launcher/api/NativeMemory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    :try_start_0
    const-string v0, "callfunction"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static native callFunction(IJZ)V
.end method

.method public static native getBoolean(II)Z
.end method

.method public static native getChar(II)C
.end method

.method public static native getDimension()J
.end method

.method public static native getFloat(II)F
.end method

.method public static native getGameMode()J
.end method

.method public static native getHitResult()J
.end method

.method public static native getInt(II)I
.end method

.method public static native getLevel()J
.end method

.method public static native getLevelRenderer()J
.end method

.method public static native getLibrary()J
.end method

.method public static native getLocalPlayer()J
.end method

.method public static native getOptions()J
.end method

.method public static native getPlayer(J)J
.end method

.method public static native getString(II)Ljava/lang/String;
.end method

.method public static native getSymbol(Ljava/lang/String;)J
.end method

.method public static native getTimer()J
.end method

.method public static native read(II)Ljava/lang/String;
.end method

.method public static native setBoolean(IIZ)V
.end method

.method public static native setChar(IIC)V
.end method

.method public static native setFloat(IIF)V
.end method

.method public static native setInt(III)V
.end method

.method public static native setString(IILjava/lang/String;)V
.end method

.method public static native write(I[C)I
.end method

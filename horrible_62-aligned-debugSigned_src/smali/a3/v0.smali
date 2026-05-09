.class public final La3/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/reflect/Field;

.field public final b:[Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, La3/v0;->b:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    iput-object p1, p0, La3/v0;->a:Ljava/lang/reflect/Field;

    return-void
.end method

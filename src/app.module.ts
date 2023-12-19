import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ConfigModule } from '@nestjs/config';
import { UsersController } from './users/users.controller';

@Module({
  imports: [ConfigModule.forRoot()],
  controllers: [AppController, UsersController],
  providers: [AppService],
})
export class AppModule {}


 function s=read_image(path,path_2,path_3,path_4 )

% dir_src ='D:\chy\result_me_ori\result\';
 dir_src=path;
% dir_src_ori ='D:\chy\scan_image\'
 dir_src_ori=path_2  ; 
 dir_src_binary_me=path_3;
 dir_src_binary_ori=path_4;
 for n=1:2512
 
 img_origin = strcat('scan',int2str(n)) 
 img_before =strcat('binary_self_consume_print_two_ori',int2str(n));
 img_after  =strcat('binary_self_afterconsume_print_two ',int2str(n)); 
 
 img_binary_before=strcat('binary_ground_removal',int2str(n)); 
 img_bingary_after=strcat('proposed_ground_removal',int2str(n));
  
 
 read_img_origin =imread([dir_src_ori img_origin, '.png']); 
 read_img_before =imread([dir_src img_before, '.png']); 
 read_img_after  =imread([dir_src img_after,  '.png']);
 
 read_binary_before=imread([dir_src_binary_me img_binary_before,  '.png']); 
 read_binary_after=imread([dir_src_binary_ori img_bingary_after,  '.png']);
  
 suptitle('ground remove algorithm ');
 figure(1);
 subplot(3,1,1);
 imshow(read_img_origin ,[]);title('raw image');
 subplot(3,1,2);
 imshow(read_img_before,[]);title('origin ground removal');
 
 
 subplot(3,1,3);
 imshow( read_img_after,[]);title('proposed ground removal');
 
 
 figure(2);
 subplot(2,1,1);
 imshow( read_binary_before,[]);title('origin ground removal');

 
 subplot(2,1,2);
 imshow( read_binary_after,[]);title('proposed ground removal');
 
 
pause(0.5);
 end







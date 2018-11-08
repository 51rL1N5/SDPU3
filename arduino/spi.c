#include <avr/io.h>


// DEFINE UTILS //////////////
#define A0 0
#define A1 0


//////////////////////////////

void SPI_MasterInit()
{

  // DEFINIR MOSI (PB5) E SCK (PB4)
  DDRB = (1 << DDB5) | (1 << DDB4);

  // FAZER ENABLE DO SPI, MASTER E SETAR O CLOCK RATE PARA Fck/16
  SPCR = (1 << SPE) | (1 << MSTR) | (1 << SPR0);
}

// LEMBRAR QUE A CHAVE (SS)' é a PB2
void SPI_MasterTransmit(char cData)
{
  // COMEÇAR A TRASMISSAO
  SPDR   = cData;

  PORTB |=  (1 << DDB2);

  // AGUARDAR A TRANSMISSÃO SER COMPLETA
  while( !(SPSR & (1 << SPIF)) );

  PORTB &= ~(1 << DDB2);
}

int main(int argc, char** argv)
{
  // TODO
  // VER SE É MELHOR REDUZIR A PRECISAO DO ADC
  // PARA 8 BITS
  // PARA QUE SEJA FEITA APENAS UMA TRANSMISSAO, O DOS MSB

  return 0;
}
